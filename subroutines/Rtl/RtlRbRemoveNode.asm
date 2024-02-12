RtlRbRemoveNode proc near               ; CODE XREF: sub_14020B4C0+330↑p
                                        ; sub_14020B4C0+340↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042E6EC SIZE 00000033 BYTES

                push    rbx
                push    r14
                movzx   r10d, byte ptr [rcx+8]
                mov     rbx, rcx
                mov     r8, [rdx]
                mov     eax, r10d
                and     eax, 1
                jnz     loc_14023ACDA

loc_14023AC1B:                          ; CODE XREF: RtlRbRemoveNode+DD↓j
                                        ; RtlRbRemoveNode+E6↓j
                mov     rcx, [rdx+8]
                test    eax, eax
                jnz     loc_14023ACEB

loc_14023AC27:                          ; CODE XREF: RtlRbRemoveNode+EE↓j
                                        ; RtlRbRemoveNode+F7↓j
                test    r8, r8

loc_14023AC2A:                          ; DATA XREF: .rdata:0000000140055098↑o
                                        ; .rdata:00000001400550A8↑o ...
                mov     [rsp+10h+arg_0], rbp
                mov     [rsp+10h+arg_8], rsi
                mov     r9, rcx
                cmovnz  r9, r8
                mov     [rsp+10h+arg_10], rdi
                xor     r14d, r14d
                mov     [rsp+10h+arg_18], r15
                and     r10b, 1
                mov     eax, r14d
                test    r8, r8
                cmovnz  rax, rcx
                test    rax, rax
                jnz     loc_14023AD48
                mov     r11, [rdx+10h]
                and     r11, 0FFFFFFFFFFFFFFFCh
                test    r10b, r10b
                jnz     loc_14023B4AA

loc_14023AC70:                          ; CODE XREF: RtlRbRemoveNode+8AD↓j
                                        ; RtlRbRemoveNode+8B6↓j
                mov     rdi, rdx
                test    r11, r11
                jz      loc_14023AEB7
                mov     rax, [r11+8]
                test    r10b, r10b
                jnz     loc_14023B4CC

loc_14023AC89:                          ; CODE XREF: RtlRbRemoveNode+8CF↓j
                                        ; RtlRbRemoveNode+8D8↓j
                cmp     rax, rdx
                jnz     short loc_14023ACFC
                mov     esi, 1

loc_14023AC93:                          ; CODE XREF: RtlRbRemoveNode+126↓j
                                        ; RtlRbRemoveNode+143↓j ...
                movzx   r8d, byte ptr [rdx+10h]

loc_14023AC98:                          ; CODE XREF: RtlRbRemoveNode+2B2↓j
                                        ; RtlRbRemoveNode+90B↓j
                and     r8b, 1
                test    byte ptr [rbx+8], 1
                jnz     loc_14023B45D

loc_14023ACA6:                          ; CODE XREF: RtlRbRemoveNode+860↓j
                mov     rcx, r9

loc_14023ACA9:                          ; CODE XREF: RtlRbRemoveNode+86C↓j
                mov     eax, esi
                mov     [r11+rax*8], rcx
                test    r9, r9
                jnz     loc_14023AF5A
                test    r8b, r8b
                jz      loc_14023AEFC

loc_14023ACC1:                          ; CODE XREF: RtlRbRemoveNode+2F7↓j
                                        ; RtlRbRemoveNode+355↓j ...
                mov     r15, [rsp+10h+arg_18]
                mov     rdi, [rsp+10h+arg_10]
                mov     rsi, [rsp+10h+arg_8]
                mov     rbp, [rsp+10h+arg_0]
                pop     r14
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_14023ACD9:                         ; DATA XREF: .pdata:00000001400CB88C↑o
                                        ; .pdata:00000001400CB898↑o
                align 2

loc_14023ACDA:                          ; CODE XREF: RtlRbRemoveNode+15↑j
                test    r8, r8
                jz      loc_14023AC1B
                xor     r8, rdx
                jmp     loc_14023AC1B
; ---------------------------------------------------------------------------

loc_14023ACEB:                          ; CODE XREF: RtlRbRemoveNode+21↑j
                test    rcx, rcx
                jz      loc_14023AC27
                xor     rcx, rdx
                jmp     loc_14023AC27
; ---------------------------------------------------------------------------

loc_14023ACFC:                          ; CODE XREF: RtlRbRemoveNode+8C↑j
                                        ; DATA XREF: .pdata:00000001400CB898↑o ...
                mov     rax, [r11]
                test    r10b, r10b
                jnz     loc_14023B510

loc_14023AD08:                          ; CODE XREF: RtlRbRemoveNode+913↓j
                                        ; RtlRbRemoveNode+91C↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rax, [rbx+8]
                mov     esi, r14d
                test    al, 1
                jnz     loc_14023B521
                mov     rcx, rax

loc_14023AD23:                          ; CODE XREF: RtlRbRemoveNode+935↓j
                                        ; RtlRbRemoveNode+1F3B12↓j
                cmp     rcx, rdx
                jnz     loc_14023AC93
                and     al, 1
                test    r9, r9
                jnz     loc_14023B26C
                test    al, al
                jnz     loc_14023B64F
                mov     [rbx+8], r11
                jmp     loc_14023AC93
; ---------------------------------------------------------------------------

loc_14023AD48:                          ; CODE XREF: RtlRbRemoveNode+59↑j
                mov     rax, [rcx]
                mov     rdi, rcx
                mov     r11, rcx
                mov     esi, 1
                test    rax, rax
                jnz     loc_14023AF89

loc_14023AD5F:                          ; CODE XREF: RtlRbRemoveNode+3A3↓j
                test    r10b, r10b
                jnz     loc_14023B53A

loc_14023AD68:                          ; CODE XREF: RtlRbRemoveNode+93D↓j
                mov     rax, r8

loc_14023AD6B:                          ; CODE XREF: RtlRbRemoveNode+949↓j
                mov     [rdi], rax
                lea     r15, [r8+10h]
                mov     r10, [r15]
                movzx   r9d, byte ptr [rbx+8]
                mov     rax, r10
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r9b, 1
                jnz     loc_14023B54E

loc_14023AD8B:                          ; CODE XREF: RtlRbRemoveNode+951↓j
                                        ; RtlRbRemoveNode+95A↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                xor     r8, rdi
                test    r9b, r9b
                cmovz   r8, rdi
                and     r10d, 3
                or      r8, r10
                mov     [r15], r8
                mov     r9, [rcx+10h]
                movzx   r10d, byte ptr [rbx+8]
                mov     rax, r9
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r10b, 1
                jnz     loc_14023B55F

loc_14023ADC2:                          ; CODE XREF: RtlRbRemoveNode+962↓j
                                        ; RtlRbRemoveNode+96B↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     r8, rdi
                mov     rax, rdi
                xor     rax, rcx
                xor     r8, rcx
                test    r10b, r10b
                cmovz   rax, rdi
                and     r9d, 3
                or      rax, r9
                mov     [rcx+10h], rax
                movzx   eax, byte ptr [rbx+8]
                mov     r9, [rdi+8]
                and     al, 1
                jnz     loc_14023B570

loc_14023ADF9:                          ; CODE XREF: RtlRbRemoveNode+973↓j
                                        ; RtlRbRemoveNode+97C↓j
                test    al, al
                cmovz   r8, rcx
                mov     [rdi+8], r8
                mov     r8, [rdi+10h]
                movzx   ecx, byte ptr [rbx+8]
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     cl, 1
                jnz     loc_14023B581

loc_14023AE1B:                          ; CODE XREF: RtlRbRemoveNode+984↓j
                mov     r10, rax

loc_14023AE1E:                          ; CODE XREF: RtlRbRemoveNode+990↓j
                cmp     r10, r11
                jnz     loc_14023B5E0

loc_14023AE27:                          ; CODE XREF: RtlRbRemoveNode+9F4↓j
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    cl, cl
                jnz     loc_14023B595

loc_14023AE37:                          ; CODE XREF: RtlRbRemoveNode+99F↓j
                                        ; RtlRbRemoveNode+9A8↓j ...
                mov     rcx, r8
                and     ecx, 3
                or      rcx, rax
                mov     [rdi+10h], rcx
                movzx   eax, byte ptr [rdx+10h]
                xor     al, cl
                and     al, 1
                xor     al, cl
                mov     [rdi+10h], al
                mov     rcx, [rdx+10h]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                jz      loc_14023B4DD
                movzx   r10d, byte ptr [rbx+8]
                and     r10b, 1
                jnz     loc_14023B5B6

loc_14023AE6E:                          ; CODE XREF: RtlRbRemoveNode+9B9↓j
                mov     rbp, [rcx+8]
                test    r10b, r10b
                jnz     loc_14023B5BE

loc_14023AE7B:                          ; CODE XREF: RtlRbRemoveNode+9C1↓j
                                        ; RtlRbRemoveNode+9CA↓j
                cmp     rbp, rdx
                mov     r15d, 8
                mov     rax, r14
                cmovz   rax, r15
                lea     r15, [rax+rcx]
                mov     rax, [rax+rcx]
                test    r10b, r10b
                jnz     loc_14023B5CF

loc_14023AE9C:                          ; CODE XREF: RtlRbRemoveNode+9D2↓j
                                        ; RtlRbRemoveNode+9DB↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                xor     rcx, rdi
                test    r10b, r10b
                cmovz   rcx, rdi
                mov     [r15], rcx
                jmp     loc_14023AC98
; ---------------------------------------------------------------------------

loc_14023AEB7:                          ; CODE XREF: RtlRbRemoveNode+76↑j
                test    r9, r9
                jnz     loc_14023B646

loc_14023AEC0:                          ; CODE XREF: RtlRbRemoveNode+A4A↓j
                mov     rax, [rbx+8]
                mov     rcx, [rbx]
                test    al, 1
                jnz     loc_14023B663

loc_14023AECF:                          ; CODE XREF: RtlRbRemoveNode+A6F↓j
                                        ; RtlRbRemoveNode+1F3B0A↓j
                cmp     rcx, rdx
                jnz     loc_14042E6F8
                test    al, 1
                jnz     loc_14023B674
                mov     [rbx+8], r9
                movzx   ecx, r9b

loc_14023AEE8:                          ; CODE XREF: RtlRbRemoveNode+A8E↓j
                test    cl, 1
                jnz     loc_14023B693
                mov     r14, r9
                mov     [rbx], r9
                jmp     loc_14023ACC1
; ---------------------------------------------------------------------------

loc_14023AEFC:                          ; CODE XREF: RtlRbRemoveNode+BB↑j
                movzx   ecx, byte ptr [rbx+8]

loc_14023AF00:                          ; CODE XREF: RtlRbRemoveNode+54C↓j
                mov     r10d, esi
                mov     rbp, r11
                xor     r10, 1
                mov     edi, esi
                mov     r8, [r11+r10*8]
                test    cl, 1
                jnz     loc_14023B5FF

loc_14023AF19:                          ; CODE XREF: RtlRbRemoveNode+A02↓j
                mov     rdx, r8

loc_14023AF1C:                          ; CODE XREF: RtlRbRemoveNode+A0E↓j
                test    byte ptr [rdx+10h], 1
                jnz     loc_14023B151

loc_14023AF26:                          ; CODE XREF: RtlRbRemoveNode+655↓j
                                        ; RtlRbRemoveNode+65E↓j ...
                mov     r8, [rdx]
                and     cl, 1
                test    r8, r8
                jnz     short loc_14023AFA8

loc_14023AF31:                          ; CODE XREF: RtlRbRemoveNode+3B9↓j
                mov     r8, [rdx+8]
                test    r8, r8
                jnz     loc_14023AFC1

loc_14023AF3E:                          ; CODE XREF: RtlRbRemoveNode+3D2↓j
                movzx   eax, byte ptr [r11+10h]
                test    al, 1
                jz      loc_14023B10E
                and     al, 0FEh
                mov     [r11+10h], al
                or      byte ptr [rdx+10h], 1
                jmp     loc_14023ACC1
; ---------------------------------------------------------------------------

loc_14023AF5A:                          ; CODE XREF: RtlRbRemoveNode+B2↑j
                mov     rax, [r9+10h]
                movzx   ecx, byte ptr [rbx+8]
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     cl, 1
                jnz     loc_14023B624

loc_14023AF6F:                          ; CODE XREF: RtlRbRemoveNode+A27↓j
                                        ; RtlRbRemoveNode+A30↓j
                cmp     rax, rdi
                jnz     loc_14042E6F8
                test    cl, cl
                jnz     loc_14023B635

loc_14023AF80:                          ; CODE XREF: RtlRbRemoveNode+A38↓j
                                        ; RtlRbRemoveNode+A41↓j
                mov     [r9+10h], r11
                jmp     loc_14023ACC1
; ---------------------------------------------------------------------------

loc_14023AF89:                          ; CODE XREF: RtlRbRemoveNode+159↑j
                mov     esi, r14d

loc_14023AF8C:                          ; CODE XREF: RtlRbRemoveNode+3A1↓j
                mov     r11, rdi
                test    r10b, r10b
                jnz     loc_14023B613

loc_14023AF98:                          ; CODE XREF: RtlRbRemoveNode+A16↓j
                mov     rdi, rax

loc_14023AF9B:                          ; CODE XREF: RtlRbRemoveNode+A1F↓j
                mov     rax, [rdi]
                test    rax, rax
                jnz     short loc_14023AF8C
                jmp     loc_14023AD5F
; ---------------------------------------------------------------------------

loc_14023AFA8:                          ; CODE XREF: RtlRbRemoveNode+32F↑j
                mov     rax, r8
                xor     rax, rdx
                test    cl, cl
                cmovnz  r8, rax
                test    byte ptr [r8+10h], 1
                jz      loc_14023AF31
                jmp     short loc_14023AFD8
; ---------------------------------------------------------------------------

loc_14023AFC1:                          ; CODE XREF: RtlRbRemoveNode+338↑j
                mov     rax, r8
                xor     rax, rdx
                test    cl, cl
                cmovnz  r8, rax
                test    byte ptr [r8+10h], 1
                jz      loc_14023AF3E

loc_14023AFD8:                          ; CODE XREF: RtlRbRemoveNode+3BF↑j
                mov     r8, [rdx+r10*8]
                test    cl, cl
                jnz     loc_14023B6B9

loc_14023AFE4:                          ; CODE XREF: RtlRbRemoveNode+AC5↓j
                test    r8, r8
                jz      loc_14023B27D
                test    byte ptr [r8+10h], 1
                jz      loc_14023B27D

loc_14023AFF8:                          ; CODE XREF: RtlRbRemoveNode+780↓j
                movzx   ecx, byte ptr [rdx+10h]
                xor     cl, [r11+10h]
                and     cl, 1
                xor     [rdx+10h], cl
                and     byte ptr [r11+10h], 0FEh
                and     byte ptr [r8+10h], 0FEh
                mov     rax, [rbx+8]
                mov     rdi, [rbx]
                test    al, 1
                jnz     loc_14023B6CA

loc_14023B01F:                          ; CODE XREF: RtlRbRemoveNode+AD6↓j
                                        ; RtlRbRemoveNode+1F3B1A↓j
                movzx   r8d, al
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r8d, 1
                jnz     loc_14023B6EA

loc_14023B035:                          ; CODE XREF: RtlRbRemoveNode+AED↓j
                                        ; RtlRbRemoveNode+AF6↓j
                cmp     rax, r11
                jnz     loc_14042E6F8
                mov     rax, [r11+r10*8]
                test    r8d, r8d
                jnz     loc_14023B6FB

loc_14023B04B:                          ; CODE XREF: RtlRbRemoveNode+AFE↓j
                                        ; RtlRbRemoveNode+B07↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rcx, [r11+10h]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                test    r8d, r8d
                jnz     loc_14023B794

loc_14023B065:                          ; CODE XREF: RtlRbRemoveNode+BA0↓j
                test    rcx, rcx
                jz      loc_14023B44C
                mov     rax, [rcx+8]
                test    r8d, r8d
                jnz     loc_14023B7D8

loc_14023B07B:                          ; CODE XREF: RtlRbRemoveNode+BDB↓j
                                        ; RtlRbRemoveNode+BE4↓j
                cmp     rax, r11
                jnz     loc_14023B3BE
                mov     rax, rdx
                xor     rax, rcx
                test    r8d, r8d
                cmovz   rax, rdx
                mov     [rcx+8], rax

loc_14023B095:                          ; CODE XREF: RtlRbRemoveNode+7E3↓j
                                        ; RtlRbRemoveNode+858↓j
                test    r8d, r8d
                jnz     loc_14023B7A5

loc_14023B09E:                          ; CODE XREF: RtlRbRemoveNode+BA8↓j
                                        ; RtlRbRemoveNode+BB1↓j
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, rcx
                mov     [rdx+10h], rax
                mov     eax, esi
                mov     rcx, [rdx+rax*8]
                lea     r9, [rdx+rax*8]
                test    r8d, r8d
                jnz     loc_14023B70C

loc_14023B0BE:                          ; CODE XREF: RtlRbRemoveNode+B18↓j
                test    rcx, rcx
                jnz     loc_14023B385

loc_14023B0C7:                          ; CODE XREF: RtlRbRemoveNode+7B9↓j
                                        ; RtlRbRemoveNode+B0F↓j
                test    r8d, r8d
                jnz     loc_14023B71D

loc_14023B0D0:                          ; CODE XREF: RtlRbRemoveNode+B20↓j
                                        ; RtlRbRemoveNode+B29↓j
                mov     [r11+r10*8], rcx
                mov     rcx, rdx
                xor     rcx, r11
                test    r8d, r8d
                mov     rax, rcx
                cmovz   rax, r11
                cmovz   rcx, rdx
                mov     [r9], rax
                mov     eax, [r11+10h]
                and     eax, 3
                or      rcx, rax
                mov     rax, rdi
                mov     [r11+10h], rcx
                test    byte ptr [rbx+8], 1
                jnz     loc_14023B6DB

loc_14023B106:                          ; CODE XREF: RtlRbRemoveNode+AE5↓j
                mov     [rbx], rax
                jmp     loc_14023ACC1
; ---------------------------------------------------------------------------

loc_14023B10E:                          ; CODE XREF: RtlRbRemoveNode+345↑j
                or      byte ptr [rdx+10h], 1
                mov     rax, [r11+10h]
                movzx   ecx, byte ptr [rbx+8]
                and     rax, 0FFFFFFFFFFFFFFFCh
                movzx   edx, cl
                and     dl, 1
                jnz     loc_14023B72E

loc_14023B12A:                          ; CODE XREF: RtlRbRemoveNode+B31↓j
                mov     r11, rax

loc_14023B12D:                          ; CODE XREF: RtlRbRemoveNode+B3A↓j
                test    r11, r11
                jz      loc_14023ACC1
                mov     rax, [r11+8]
                test    dl, dl
                jnz     loc_14023B7B6

loc_14023B142:                          ; CODE XREF: RtlRbRemoveNode+BB9↓j
                                        ; RtlRbRemoveNode+BC2↓j
                cmp     rax, rbp
                mov     esi, r14d
                setz    sil
                jmp     loc_14023AF00
; ---------------------------------------------------------------------------

loc_14023B151:                          ; CODE XREF: RtlRbRemoveNode+320↑j
                mov     rax, [rbx+8]
                mov     r15, [rbx]
                test    al, 1
                jnz     loc_14023B73F

loc_14023B160:                          ; CODE XREF: RtlRbRemoveNode+B4B↓j
                                        ; RtlRbRemoveNode+D0B↓j
                movzx   r9d, al
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r9d, 1
                jnz     loc_14023B750

loc_14023B176:                          ; CODE XREF: RtlRbRemoveNode+B53↓j
                                        ; RtlRbRemoveNode+B5C↓j
                cmp     rax, r11
                jnz     loc_14042E6F8
                test    r9d, r9d
                jnz     loc_14023B761

loc_14023B188:                          ; CODE XREF: RtlRbRemoveNode+B64↓j
                                        ; RtlRbRemoveNode+B6D↓j
                cmp     r8, rdx
                jnz     loc_14042E6F8
                mov     rcx, [r11+10h]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                test    r9d, r9d
                jnz     loc_14023B7F8

loc_14023B1A2:                          ; CODE XREF: RtlRbRemoveNode+C04↓j
                test    rcx, rcx
                jz      loc_14023B4BB
                mov     rax, [rcx+8]
                test    r9d, r9d
                jnz     loc_14023B81A

loc_14023B1B8:                          ; CODE XREF: RtlRbRemoveNode+C1D↓j
                                        ; RtlRbRemoveNode+C26↓j
                cmp     rax, r11
                jnz     loc_14023B422
                mov     rax, rdx
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, rdx
                mov     [rcx+8], rax

loc_14023B1D2:                          ; CODE XREF: RtlRbRemoveNode+847↓j
                                        ; RtlRbRemoveNode+8C7↓j
                test    r9d, r9d
                jnz     loc_14023B809

loc_14023B1DB:                          ; CODE XREF: RtlRbRemoveNode+C0C↓j
                                        ; RtlRbRemoveNode+C15↓j
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, rcx
                mov     [rdx+10h], rax
                mov     rcx, [rdx+rdi*8]
                test    r9d, r9d
                jnz     loc_14023B772

loc_14023B1F5:                          ; CODE XREF: RtlRbRemoveNode+B7E↓j
                test    rcx, rcx
                jnz     loc_14023B3E8

loc_14023B1FE:                          ; CODE XREF: RtlRbRemoveNode+81D↓j
                                        ; RtlRbRemoveNode+B75↓j
                test    r9d, r9d
                jnz     loc_14023B783

loc_14023B207:                          ; CODE XREF: RtlRbRemoveNode+B86↓j
                                        ; RtlRbRemoveNode+B8F↓j
                mov     [r11+r10*8], rcx
                mov     rcx, rdx
                xor     rcx, r11
                test    r9d, r9d
                mov     rax, rcx
                cmovz   rax, r11
                cmovz   rcx, rdx
                mov     [rdx+rdi*8], rax
                mov     eax, [r11+10h]
                and     eax, 3
                or      rcx, rax
                mov     rax, r15
                mov     [r11+10h], rcx
                test    byte ptr [rbx+8], 1
                jnz     loc_14023B7E9

loc_14023B23E:                          ; CODE XREF: RtlRbRemoveNode+BF3↓j
                mov     [rbx], rax
                and     byte ptr [rdx+10h], 0FEh
                or      byte ptr [r11+10h], 1
                movzx   ecx, byte ptr [rbx+8]
                mov     rdx, [r11+r10*8]
                test    cl, 1
                jz      loc_14023AF26
                test    rdx, rdx
                jz      loc_14023AF26
                xor     rdx, r11
                jmp     loc_14023AF26
; ---------------------------------------------------------------------------

loc_14023B26C:                          ; CODE XREF: RtlRbRemoveNode+131↑j
                test    al, al
                jnz     loc_14023B86F
                mov     [rbx+8], r9
                jmp     loc_14023AC93
; ---------------------------------------------------------------------------

loc_14023B27D:                          ; CODE XREF: RtlRbRemoveNode+3E7↑j
                                        ; RtlRbRemoveNode+3F2↑j ...
                mov     eax, esi
                mov     r9, [rdx+rax*8]
                test    cl, cl
                jnz     loc_14023B7C7

loc_14023B28B:                          ; CODE XREF: RtlRbRemoveNode+BCA↓j
                                        ; RtlRbRemoveNode+BD3↓j
                and     byte ptr [r9+10h], 0FEh
                mov     ecx, esi
                mov     rax, [r9+10h]
                xor     ecx, 1
                movzx   r8d, byte ptr [rbx+8]
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r8d, 1
                jnz     loc_14023B82B

loc_14023B2AC:                          ; CODE XREF: RtlRbRemoveNode+C2E↓j
                                        ; RtlRbRemoveNode+C37↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rax, rcx
                xor     rax, 1
                lea     r15, [rdx+rax*8]
                mov     rax, [rdx+rax*8]
                test    r8d, r8d
                jnz     loc_14023B83C

loc_14023B2CD:                          ; CODE XREF: RtlRbRemoveNode+C3F↓j
                                        ; RtlRbRemoveNode+C48↓j
                cmp     rax, r9
                jnz     loc_14042E6F8
                mov     rax, [r11+rcx*8]
                test    r8d, r8d
                jnz     loc_14023B8B6

loc_14023B2E3:                          ; CODE XREF: RtlRbRemoveNode+CB9↓j
                                        ; RtlRbRemoveNode+CC2↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r8d, r8d
                jnz     loc_14023B8C7

loc_14023B2FD:                          ; CODE XREF: RtlRbRemoveNode+CCA↓j
                                        ; RtlRbRemoveNode+CD3↓j
                cmp     rax, r11
                jnz     loc_14042E6F8
                mov     rdi, r11
                xor     rdi, r9
                test    r8d, r8d
                mov     rax, rdi
                cmovz   rax, r9
                mov     [r11+rcx*8], rax
                jnz     loc_14023B8D8

loc_14023B320:                          ; CODE XREF: RtlRbRemoveNode+CE1↓j
                mov     rdi, r11

loc_14023B323:                          ; CODE XREF: RtlRbRemoveNode+CDB↓j
                mov     eax, [r9+10h]
                and     eax, 3
                or      rax, rdi
                lea     rdi, [r9+rcx*8]
                mov     [r9+10h], rax
                mov     rcx, [rdi]
                test    r8d, r8d
                jnz     loc_14023B84D

loc_14023B341:                          ; CODE XREF: RtlRbRemoveNode+C59↓j
                test    rcx, rcx
                jnz     loc_14023B471

loc_14023B34A:                          ; CODE XREF: RtlRbRemoveNode+8A5↓j
                                        ; RtlRbRemoveNode+C50↓j
                test    r8d, r8d
                jnz     loc_14023B85E

loc_14023B353:                          ; CODE XREF: RtlRbRemoveNode+C61↓j
                                        ; RtlRbRemoveNode+C6A↓j
                mov     [r15], rcx
                mov     rcx, r9
                xor     rcx, rdx
                test    r8d, r8d
                mov     rax, rcx
                mov     r8, rdx
                cmovz   rax, rdx
                cmovz   rcx, r9
                mov     [rdi], rax
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rcx, rax
                mov     [rdx+10h], rcx
                mov     rdx, r9
                jmp     loc_14023AFF8
; ---------------------------------------------------------------------------

loc_14023B385:                          ; CODE XREF: RtlRbRemoveNode+4C1↑j
                mov     rsi, [rcx+10h]
                mov     rax, rsi
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r8d, r8d
                jnz     loc_14023B894

loc_14023B399:                          ; CODE XREF: RtlRbRemoveNode+C97↓j
                                        ; RtlRbRemoveNode+CA0↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rax, rcx
                xor     rax, r11
                test    r8d, r8d
                cmovz   rax, r11
                and     esi, 3
                or      rax, rsi
                mov     [rcx+10h], rax
                jmp     loc_14023B0C7
; ---------------------------------------------------------------------------

loc_14023B3BE:                          ; CODE XREF: RtlRbRemoveNode+47E↑j
                mov     rax, [rcx]
                test    r8d, r8d
                jnz     loc_14023B883

loc_14023B3CA:                          ; CODE XREF: RtlRbRemoveNode+C86↓j
                                        ; RtlRbRemoveNode+C8F↓j
                cmp     rax, r11
                jnz     loc_14042E6F8
                mov     rax, rdx
                xor     rax, rcx
                test    r8d, r8d
                cmovz   rax, rdx
                mov     [rcx], rax
                jmp     loc_14023B095
; ---------------------------------------------------------------------------

loc_14023B3E8:                          ; CODE XREF: RtlRbRemoveNode+5F8↑j
                mov     r8, [rcx+10h]
                mov     rax, r8
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r9d, r9d
                jnz     loc_14023B8E6

loc_14023B3FC:                          ; CODE XREF: RtlRbRemoveNode+CE9↓j
                                        ; RtlRbRemoveNode+CF2↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rax, r11
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, r11
                and     r8d, 3
                or      rax, r8
                mov     [rcx+10h], rax
                jmp     loc_14023B1FE
; ---------------------------------------------------------------------------

loc_14023B422:                          ; CODE XREF: RtlRbRemoveNode+5BB↑j
                mov     rax, [rcx]
                test    r9d, r9d
                jnz     loc_14023B8A5

loc_14023B42E:                          ; CODE XREF: RtlRbRemoveNode+CA8↓j
                                        ; RtlRbRemoveNode+CB1↓j
                cmp     rax, r11
                jnz     loc_14042E6F8
                mov     rax, rdx
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, rdx
                mov     [rcx], rax
                jmp     loc_14023B1D2
; ---------------------------------------------------------------------------

loc_14023B44C:                          ; CODE XREF: RtlRbRemoveNode+468↑j
                                        ; RtlRbRemoveNode+B97↓j
                cmp     rdi, r11
                jnz     loc_14042E6F8
                mov     rdi, rdx
                jmp     loc_14023B095
; ---------------------------------------------------------------------------

loc_14023B45D:                          ; CODE XREF: RtlRbRemoveNode+A0↑j
                test    r9, r9
                jz      loc_14023ACA6
                mov     rcx, r11
                xor     rcx, r9
                jmp     loc_14023ACA9
; ---------------------------------------------------------------------------

loc_14023B471:                          ; CODE XREF: RtlRbRemoveNode+744↑j
                mov     rbp, [rcx+10h]
                mov     rax, rbp
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r8d, r8d
                jnz     loc_14023B8F7

loc_14023B485:                          ; CODE XREF: RtlRbRemoveNode+CFA↓j
                                        ; RtlRbRemoveNode+D03↓j
                cmp     rax, r9
                jnz     loc_14042E6F8
                mov     rax, rdx
                xor     rax, rcx
                test    r8d, r8d
                cmovz   rax, rdx
                and     ebp, 3
                or      rax, rbp
                mov     [rcx+10h], rax
                jmp     loc_14023B34A
; ---------------------------------------------------------------------------

loc_14023B4AA:                          ; CODE XREF: RtlRbRemoveNode+6A↑j
                test    r11, r11
                jz      loc_14023AC70
                xor     r11, rdx
                jmp     loc_14023AC70
; ---------------------------------------------------------------------------

loc_14023B4BB:                          ; CODE XREF: RtlRbRemoveNode+5A5↑j
                                        ; RtlRbRemoveNode+BFB↓j
                cmp     r15, r11
                jnz     loc_14042E6F8
                mov     r15, rdx
                jmp     loc_14023B1D2
; ---------------------------------------------------------------------------

loc_14023B4CC:                          ; CODE XREF: RtlRbRemoveNode+83↑j
                test    rax, rax
                jz      loc_14023AC89
                xor     rax, r11
                jmp     loc_14023AC89
; ---------------------------------------------------------------------------

loc_14023B4DD:                          ; CODE XREF: RtlRbRemoveNode+259↑j
                mov     r10, [rbx+8]
                mov     rax, [rbx]
                test    r10b, 1
                jnz     loc_14023B6A8

loc_14023B4EE:                          ; CODE XREF: RtlRbRemoveNode+AB4↓j
                                        ; RtlRbRemoveNode+1F3B02↓j
                cmp     rax, rdx
                jnz     loc_14042E6F8
                mov     rcx, rdi
                mov     rax, rdi
                xor     rcx, rbx
                test    r10b, 1
                cmovnz  rax, rcx
                mov     [rbx], rax
                jmp     loc_14023AC98
; ---------------------------------------------------------------------------

loc_14023B510:                          ; CODE XREF: RtlRbRemoveNode+102↑j
                test    rax, rax
                jz      loc_14023AD08
                xor     rax, r11
                jmp     loc_14023AD08
; ---------------------------------------------------------------------------

loc_14023B521:                          ; CODE XREF: RtlRbRemoveNode+11A↑j
                cmp     rax, 1
                jz      loc_14042E70F
                mov     rcx, rbx
                or      rcx, 1
                xor     rcx, rax
                jmp     loc_14023AD23
; ---------------------------------------------------------------------------

loc_14023B53A:                          ; CODE XREF: RtlRbRemoveNode+162↑j
                test    r8, r8
                jz      loc_14023AD68
                mov     rax, rdi
                xor     rax, r8
                jmp     loc_14023AD6B
; ---------------------------------------------------------------------------

loc_14023B54E:                          ; CODE XREF: RtlRbRemoveNode+185↑j
                test    rax, rax
                jz      loc_14023AD8B
                xor     rax, r8
                jmp     loc_14023AD8B
; ---------------------------------------------------------------------------

loc_14023B55F:                          ; CODE XREF: RtlRbRemoveNode+1BC↑j
                test    rax, rax
                jz      loc_14023ADC2
                xor     rax, rcx
                jmp     loc_14023ADC2
; ---------------------------------------------------------------------------

loc_14023B570:                          ; CODE XREF: RtlRbRemoveNode+1F3↑j
                test    r9, r9
                jz      loc_14023ADF9
                xor     r9, rdi
                jmp     loc_14023ADF9
; ---------------------------------------------------------------------------

loc_14023B581:                          ; CODE XREF: RtlRbRemoveNode+215↑j
                test    rax, rax
                jz      loc_14023AE1B
                mov     r10, rax
                xor     r10, rdi
                jmp     loc_14023AE1E
; ---------------------------------------------------------------------------

loc_14023B595:                          ; CODE XREF: RtlRbRemoveNode+231↑j
                test    rax, rax
                jz      short loc_14023B59D
                xor     rax, rdx

loc_14023B59D:                          ; CODE XREF: RtlRbRemoveNode+998↑j
                test    cl, cl
                jz      loc_14023AE37
                test    rax, rax
                jz      loc_14023AE37
                xor     rax, rdi
                jmp     loc_14023AE37
; ---------------------------------------------------------------------------

loc_14023B5B6:                          ; CODE XREF: RtlRbRemoveNode+268↑j
                xor     rcx, rdx
                jmp     loc_14023AE6E
; ---------------------------------------------------------------------------

loc_14023B5BE:                          ; CODE XREF: RtlRbRemoveNode+275↑j
                test    rbp, rbp
                jz      loc_14023AE7B
                xor     rbp, rcx
                jmp     loc_14023AE7B
; ---------------------------------------------------------------------------

loc_14023B5CF:                          ; CODE XREF: RtlRbRemoveNode+296↑j
                test    rax, rax
                jz      loc_14023AE9C
                xor     rax, rcx
                jmp     loc_14023AE9C
; ---------------------------------------------------------------------------

loc_14023B5E0:                          ; CODE XREF: RtlRbRemoveNode+221↑j
                test    cl, cl
                jz      loc_14042E6EF
                test    rax, rax
                jnz     loc_14042E6EC

loc_14023B5F1:                          ; CODE XREF: RtlRbRemoveNode+1F3AF2↓j
                cmp     rdi, r11
                jz      loc_14023AE27
                jmp     loc_14042E6F8
; ---------------------------------------------------------------------------

loc_14023B5FF:                          ; CODE XREF: RtlRbRemoveNode+313↑j
                test    r8, r8
                jz      loc_14023AF19
                mov     rdx, r8
                xor     rdx, r11
                jmp     loc_14023AF1C
; ---------------------------------------------------------------------------

loc_14023B613:                          ; CODE XREF: RtlRbRemoveNode+392↑j
                test    rax, rax
                jz      loc_14023AF98
                xor     rdi, rax
                jmp     loc_14023AF9B
; ---------------------------------------------------------------------------

loc_14023B624:                          ; CODE XREF: RtlRbRemoveNode+369↑j
                test    rax, rax
                jz      loc_14023AF6F
                xor     rax, r9
                jmp     loc_14023AF6F
; ---------------------------------------------------------------------------

loc_14023B635:                          ; CODE XREF: RtlRbRemoveNode+37A↑j
                test    r11, r11
                jz      loc_14023AF80
                xor     r11, r9
                jmp     loc_14023AF80
; ---------------------------------------------------------------------------

loc_14023B646:                          ; CODE XREF: RtlRbRemoveNode+2BA↑j
                mov     [r9+10h], r14
                jmp     loc_14023AEC0
; ---------------------------------------------------------------------------

loc_14023B64F:                          ; CODE XREF: RtlRbRemoveNode+139↑j
                mov     rax, r11
                xor     rax, rbx
                mov     [rbx+8], rax
                or      al, 1
                mov     [rbx+8], al
                jmp     loc_14023AC93
; ---------------------------------------------------------------------------

loc_14023B663:                          ; CODE XREF: RtlRbRemoveNode+2C9↑j
                test    rcx, rcx
                jz      loc_14042E707
                xor     rcx, rbx
                jmp     loc_14023AECF
; ---------------------------------------------------------------------------

loc_14023B674:                          ; CODE XREF: RtlRbRemoveNode+2DA↑j
                mov     rax, r9
                mov     rcx, r14
                xor     rax, rbx
                test    r9, r9
                cmovnz  rcx, rax
                mov     [rbx+8], rcx
                or      cl, 1
                mov     [rbx+8], cl
                jmp     loc_14023AEE8
; ---------------------------------------------------------------------------

loc_14023B693:                          ; CODE XREF: RtlRbRemoveNode+2EB↑j
                mov     rax, r9
                xor     rax, rbx
                test    r9, r9
                cmovnz  r14, rax
                mov     [rbx], r14
                jmp     loc_14023ACC1
; ---------------------------------------------------------------------------

loc_14023B6A8:                          ; CODE XREF: RtlRbRemoveNode+8E8↑j
                test    rax, rax
                jz      loc_14042E6FF
                xor     rax, rbx
                jmp     loc_14023B4EE
; ---------------------------------------------------------------------------

loc_14023B6B9:                          ; CODE XREF: RtlRbRemoveNode+3DE↑j
                test    r8, r8
                jz      loc_14023B27D
                xor     r8, rdx
                jmp     loc_14023AFE4
; ---------------------------------------------------------------------------

loc_14023B6CA:                          ; CODE XREF: RtlRbRemoveNode+419↑j
                test    rdi, rdi
                jz      loc_14042E717
                xor     rdi, rbx
                jmp     loc_14023B01F
; ---------------------------------------------------------------------------

loc_14023B6DB:                          ; CODE XREF: RtlRbRemoveNode+500↑j
                xor     rax, rbx
                test    rdi, rdi
                cmovz   rax, r14
                jmp     loc_14023B106
; ---------------------------------------------------------------------------

loc_14023B6EA:                          ; CODE XREF: RtlRbRemoveNode+42F↑j
                test    rax, rax
                jz      loc_14023B035
                xor     rax, rdx
                jmp     loc_14023B035
; ---------------------------------------------------------------------------

loc_14023B6FB:                          ; CODE XREF: RtlRbRemoveNode+445↑j
                test    rax, rax
                jz      loc_14023B04B
                xor     rax, r11
                jmp     loc_14023B04B
; ---------------------------------------------------------------------------

loc_14023B70C:                          ; CODE XREF: RtlRbRemoveNode+4B8↑j
                test    rcx, rcx
                jz      loc_14023B0C7
                xor     rcx, rdx
                jmp     loc_14023B0BE
; ---------------------------------------------------------------------------

loc_14023B71D:                          ; CODE XREF: RtlRbRemoveNode+4CA↑j
                test    rcx, rcx
                jz      loc_14023B0D0
                xor     rcx, r11
                jmp     loc_14023B0D0
; ---------------------------------------------------------------------------

loc_14023B72E:                          ; CODE XREF: RtlRbRemoveNode+524↑j
                test    rax, rax
                jz      loc_14023B12A
                xor     r11, rax
                jmp     loc_14023B12D
; ---------------------------------------------------------------------------

loc_14023B73F:                          ; CODE XREF: RtlRbRemoveNode+55A↑j
                test    r15, r15
                jz      loc_14023B908
                xor     r15, rbx
                jmp     loc_14023B160
; ---------------------------------------------------------------------------

loc_14023B750:                          ; CODE XREF: RtlRbRemoveNode+570↑j
                test    rax, rax
                jz      loc_14023B176
                xor     rax, rdx
                jmp     loc_14023B176
; ---------------------------------------------------------------------------

loc_14023B761:                          ; CODE XREF: RtlRbRemoveNode+582↑j
                test    r8, r8
                jz      loc_14023B188
                xor     r8, r11
                jmp     loc_14023B188
; ---------------------------------------------------------------------------

loc_14023B772:                          ; CODE XREF: RtlRbRemoveNode+5EF↑j
                test    rcx, rcx
                jz      loc_14023B1FE
                xor     rcx, rdx
                jmp     loc_14023B1F5
; ---------------------------------------------------------------------------

loc_14023B783:                          ; CODE XREF: RtlRbRemoveNode+601↑j
                test    rcx, rcx
                jz      loc_14023B207
                xor     rcx, r11
                jmp     loc_14023B207
; ---------------------------------------------------------------------------

loc_14023B794:                          ; CODE XREF: RtlRbRemoveNode+45F↑j
                test    rcx, rcx
                jz      loc_14023B44C
                xor     rcx, r11
                jmp     loc_14023B065
; ---------------------------------------------------------------------------

loc_14023B7A5:                          ; CODE XREF: RtlRbRemoveNode+498↑j
                test    rcx, rcx
                jz      loc_14023B09E
                xor     rcx, rdx
                jmp     loc_14023B09E
; ---------------------------------------------------------------------------

loc_14023B7B6:                          ; CODE XREF: RtlRbRemoveNode+53C↑j
                test    rax, rax
                jz      loc_14023B142
                xor     rax, r11
                jmp     loc_14023B142
; ---------------------------------------------------------------------------

loc_14023B7C7:                          ; CODE XREF: RtlRbRemoveNode+685↑j
                test    r9, r9
                jz      loc_14023B28B
                xor     r9, rdx
                jmp     loc_14023B28B
; ---------------------------------------------------------------------------

loc_14023B7D8:                          ; CODE XREF: RtlRbRemoveNode+475↑j
                test    rax, rax
                jz      loc_14023B07B
                xor     rax, rcx
                jmp     loc_14023B07B
; ---------------------------------------------------------------------------

loc_14023B7E9:                          ; CODE XREF: RtlRbRemoveNode+638↑j
                xor     rax, rbx
                test    r15, r15
                cmovz   rax, r14
                jmp     loc_14023B23E
; ---------------------------------------------------------------------------

loc_14023B7F8:                          ; CODE XREF: RtlRbRemoveNode+59C↑j
                test    rcx, rcx
                jz      loc_14023B4BB
                xor     rcx, r11
                jmp     loc_14023B1A2
; ---------------------------------------------------------------------------

loc_14023B809:                          ; CODE XREF: RtlRbRemoveNode+5D5↑j
                test    rcx, rcx
                jz      loc_14023B1DB
                xor     rcx, rdx
                jmp     loc_14023B1DB
; ---------------------------------------------------------------------------

loc_14023B81A:                          ; CODE XREF: RtlRbRemoveNode+5B2↑j
                test    rax, rax
                jz      loc_14023B1B8
                xor     rax, rcx
                jmp     loc_14023B1B8
; ---------------------------------------------------------------------------

loc_14023B82B:                          ; CODE XREF: RtlRbRemoveNode+6A6↑j
                test    rax, rax
                jz      loc_14023B2AC
                xor     rax, r9
                jmp     loc_14023B2AC
; ---------------------------------------------------------------------------

loc_14023B83C:                          ; CODE XREF: RtlRbRemoveNode+6C7↑j
                test    rax, rax
                jz      loc_14023B2CD
                xor     rax, rdx
                jmp     loc_14023B2CD
; ---------------------------------------------------------------------------

loc_14023B84D:                          ; CODE XREF: RtlRbRemoveNode+73B↑j
                test    rcx, rcx
                jz      loc_14023B34A
                xor     rcx, r9
                jmp     loc_14023B341
; ---------------------------------------------------------------------------

loc_14023B85E:                          ; CODE XREF: RtlRbRemoveNode+74D↑j
                test    rcx, rcx
                jz      loc_14023B353
                xor     rcx, rdx
                jmp     loc_14023B353
; ---------------------------------------------------------------------------

loc_14023B86F:                          ; CODE XREF: RtlRbRemoveNode+66E↑j
                mov     rax, r9
                xor     rax, rbx
                mov     [rbx+8], rax
                or      al, 1
                mov     [rbx+8], al
                jmp     loc_14023AC93
; ---------------------------------------------------------------------------

loc_14023B883:                          ; CODE XREF: RtlRbRemoveNode+7C4↑j
                test    rax, rax
                jz      loc_14023B3CA
                xor     rax, rcx
                jmp     loc_14023B3CA
; ---------------------------------------------------------------------------

loc_14023B894:                          ; CODE XREF: RtlRbRemoveNode+793↑j
                test    rax, rax
                jz      loc_14023B399
                xor     rax, rcx
                jmp     loc_14023B399
; ---------------------------------------------------------------------------

loc_14023B8A5:                          ; CODE XREF: RtlRbRemoveNode+828↑j
                test    rax, rax
                jz      loc_14023B42E
                xor     rax, rcx
                jmp     loc_14023B42E
; ---------------------------------------------------------------------------

loc_14023B8B6:                          ; CODE XREF: RtlRbRemoveNode+6DD↑j
                test    rax, rax
                jz      loc_14023B2E3
                xor     rax, r11
                jmp     loc_14023B2E3
; ---------------------------------------------------------------------------

loc_14023B8C7:                          ; CODE XREF: RtlRbRemoveNode+6F7↑j
                test    rax, rax
                jz      loc_14023B2FD
                xor     rax, rdx
                jmp     loc_14023B2FD
; ---------------------------------------------------------------------------

loc_14023B8D8:                          ; CODE XREF: RtlRbRemoveNode+71A↑j
                test    r11, r11
                jnz     loc_14023B323
                jmp     loc_14023B320
; ---------------------------------------------------------------------------

loc_14023B8E6:                          ; CODE XREF: RtlRbRemoveNode+7F6↑j
                test    rax, rax
                jz      loc_14023B3FC
                xor     rax, rcx
                jmp     loc_14023B3FC
; ---------------------------------------------------------------------------

loc_14023B8F7:                          ; CODE XREF: RtlRbRemoveNode+87F↑j
                test    rax, rax
                jz      loc_14023B485
                xor     rax, rcx
                jmp     loc_14023B485
; ---------------------------------------------------------------------------

loc_14023B908:                          ; CODE XREF: RtlRbRemoveNode+B42↑j
                mov     r15, r14
                jmp     loc_14023B160
RtlRbRemoveNode endp
