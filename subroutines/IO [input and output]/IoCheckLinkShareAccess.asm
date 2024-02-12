IoCheckLinkShareAccess proc near        ; CODE XREF: sub_140698744+14B↓p
                                        ; IoCheckShareAccess+17↓p ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001407FAF9E SIZE 00000021 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     ebx, ecx
                mov     edi, ecx
                and     ebx, 21h
                mov     r11d, ecx
                mov     rcx, [rsp+30h+arg_20]
                mov     esi, edx
                mov     edx, [rsp+30h+arg_28]
                setnz   r13b
                and     edi, 6
                setnz   al
                and     r11d, 10000h
                mov     [rsp+30h+arg_0], al
                setnz   bpl
                mov     [rsp+30h+arg_18], bpl
                test    r9, r9
                jz      loc_14060835B

loc_1406081E0:                          ; CODE XREF: IoCheckLinkShareAccess+1F3↓j
                mov     r10d, edx
                and     r10d, 2
                jnz     short loc_1406081F5
                mov     [r8+4Ah], r13b
                mov     [r8+4Bh], al
                mov     [r8+4Ch], bpl

loc_1406081F5:                          ; CODE XREF: IoCheckLinkShareAccess+57↑j
                test    ebx, ebx
                jnz     short loc_14060821F
                test    edi, edi
                jnz     short loc_14060821F
                test    r11d, r11d
                jnz     short loc_14060821F
                test    dl, 20h
                jnz     short loc_14060821F

loc_140608207:                          ; CODE XREF: IoCheckLinkShareAccess+15E↓j
                                        ; IoCheckLinkShareAccess+19D↓j ...
                xor     eax, eax

loc_140608209:                          ; CODE XREF: IoCheckLinkShareAccess+1C6↓j
                                        ; IoCheckLinkShareAccess+1F2E13↓j
                mov     rbx, [rsp+30h+arg_8]
                mov     rbp, [rsp+30h+arg_10]
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14060821F:                          ; CODE XREF: IoCheckLinkShareAccess+67↑j
                                        ; IoCheckLinkShareAccess+6B↑j ...
                mov     r14d, esi
                mov     ebp, esi
                and     r14d, 2
                setnz   r15b
                and     ebp, 4
                setnz   r12b
                and     sil, 1
                test    edx, edx
                js      loc_1407FAFA8

loc_14060823F:                          ; CODE XREF: IoCheckLinkShareAccess+1F2E2A↓j
                test    r10d, r10d
                jnz     short loc_140608250
                mov     [r8+4Dh], sil
                mov     [r8+4Eh], r15b
                mov     [r8+4Fh], r12b

loc_140608250:                          ; CODE XREF: IoCheckLinkShareAccess+B2↑j
                xor     r10d, r10d
                test    r8, r8
                jz      loc_140608388
                mov     rax, [r8+0D0h]
                lea     r8d, [r10+1]
                test    rax, rax
                jnz     loc_140608393

loc_140608270:                          ; CODE XREF: IoCheckLinkShareAccess+1FE↓j
                                        ; IoCheckLinkShareAccess+208↓j
                mov     al, r10b
                test    dl, 4
                jnz     short loc_14060829B
                test    ebx, ebx
                jz      short loc_140608289
                mov     eax, [r9]
                cmp     [r9+10h], eax
                jb      loc_1406083C3

loc_140608289:                          ; CODE XREF: IoCheckLinkShareAccess+EA↑j
                cmp     [r9+4], r10d
                jz      short loc_140608298
                test    sil, sil
                jz      loc_1406083C3

loc_140608298:                          ; CODE XREF: IoCheckLinkShareAccess+FD↑j
                mov     al, r10b

loc_14060829B:                          ; CODE XREF: IoCheckLinkShareAccess+E6↑j
                                        ; IoCheckLinkShareAccess+236↓j
                test    dl, 8
                jnz     short loc_1406082B9
                test    al, al
                jnz     short loc_1406082B9
                test    edi, edi
                jnz     loc_1406083B4

loc_1406082AC:                          ; CODE XREF: IoCheckLinkShareAccess+22B↓j
                cmp     [r9+8], r10d
                jnz     loc_1406083A3

loc_1406082B6:                          ; CODE XREF: IoCheckLinkShareAccess+216↓j
                mov     al, r10b

loc_1406082B9:                          ; CODE XREF: IoCheckLinkShareAccess+10E↑j
                                        ; IoCheckLinkShareAccess+112↑j ...
                test    dl, 10h
                jnz     loc_1406083D9
                test    al, al
                jnz     loc_140608351
                test    rcx, rcx
                jz      loc_1406083CB
                test    dl, 40h
                jnz     loc_1406083CB
                test    r11d, r11d
                jnz     short loc_14060834A

loc_1406082E1:                          ; CODE XREF: IoCheckLinkShareAccess+1BF↓j
                cmp     [rcx+4], r10d
                jnz     loc_1406083F4

loc_1406082EB:                          ; CODE XREF: IoCheckLinkShareAccess+24B↓j
                                        ; IoCheckLinkShareAccess+266↓j
                test    r8b, dl
                jz      loc_140608207
                add     [r9], r8d
                movzx   r8d, [rsp+30h+arg_18]
                add     [r9+0Ch], r8d
                movzx   eax, r13b
                add     [r9+4], eax
                movzx   eax, [rsp+30h+arg_0]
                add     [r9+8], eax
                movzx   eax, sil
                add     [r9+10h], eax
                movzx   eax, r15b
                add     [r9+14h], eax
                movzx   eax, r12b
                add     [r9+18h], eax
                test    rcx, rcx
                jz      loc_140608207
                mov     esi, 1
                add     [rcx], esi
                test    dl, dl
                js      short loc_140608342
                add     [rcx+4], r8d

loc_140608342:                          ; CODE XREF: IoCheckLinkShareAccess+1AC↑j
                add     [rcx+8], eax
                jmp     loc_140608207
; ---------------------------------------------------------------------------

loc_14060834A:                          ; CODE XREF: IoCheckLinkShareAccess+14F↑j
                mov     eax, [rcx]
                cmp     [rcx+8], eax
                jnb     short loc_1406082E1

loc_140608351:                          ; CODE XREF: IoCheckLinkShareAccess+134↑j
                                        ; IoCheckLinkShareAccess+251↓j ...
                mov     eax, 0C0000043h
                jmp     loc_140608209
; ---------------------------------------------------------------------------

loc_14060835B:                          ; CODE XREF: IoCheckLinkShareAccess+4A↑j
                mov     eax, edx
                and     eax, 0Ch
                cmp     al, 0Ch
                jnz     loc_1407FAF9E
                test    dl, 10h
                jnz     short loc_14060837F
                test    rcx, rcx
                jz      loc_1407FAF9E
                test    dl, 40h
                jnz     loc_1407FAF9E

loc_14060837F:                          ; CODE XREF: IoCheckLinkShareAccess+1DB↑j
                mov     al, [rsp+30h+arg_0]
                jmp     loc_1406081E0
; ---------------------------------------------------------------------------

loc_140608388:                          ; CODE XREF: IoCheckLinkShareAccess+C6↑j
                mov     r8d, 1
                jmp     loc_140608270
; ---------------------------------------------------------------------------

loc_140608393:                          ; CODE XREF: IoCheckLinkShareAccess+DA↑j
                mov     eax, [rax]
                test    r8b, al
                jz      loc_140608270
                jmp     loc_140608207
; ---------------------------------------------------------------------------

loc_1406083A3:                          ; CODE XREF: IoCheckLinkShareAccess+120↑j
                test    r14d, r14d
                jnz     loc_1406082B6

loc_1406083AC:                          ; CODE XREF: IoCheckLinkShareAccess+231↓j
                mov     al, r8b
                jmp     loc_1406082B9
; ---------------------------------------------------------------------------

loc_1406083B4:                          ; CODE XREF: IoCheckLinkShareAccess+116↑j
                mov     eax, [r9]
                cmp     [r9+14h], eax
                jnb     loc_1406082AC
                jmp     short loc_1406083AC
; ---------------------------------------------------------------------------

loc_1406083C3:                          ; CODE XREF: IoCheckLinkShareAccess+F3↑j
                                        ; IoCheckLinkShareAccess+102↑j
                mov     al, r8b
                jmp     loc_14060829B
; ---------------------------------------------------------------------------

loc_1406083CB:                          ; CODE XREF: IoCheckLinkShareAccess+13D↑j
                                        ; IoCheckLinkShareAccess+146↑j
                test    r11d, r11d
                jnz     short loc_1406083E6

loc_1406083D0:                          ; CODE XREF: IoCheckLinkShareAccess+25D↓j
                cmp     [r9+0Ch], r10d
                jnz     short loc_140608401

loc_1406083D6:                          ; CODE XREF: IoCheckLinkShareAccess+273↓j
                mov     al, r10b

loc_1406083D9:                          ; CODE XREF: IoCheckLinkShareAccess+12C↑j
                test    al, al
                jz      loc_1406082EB
                jmp     loc_140608351
; ---------------------------------------------------------------------------

loc_1406083E6:                          ; CODE XREF: IoCheckLinkShareAccess+23E↑j
                mov     eax, [r9]
                cmp     [r9+18h], eax
                jnb     short loc_1406083D0
                jmp     loc_140608351
; ---------------------------------------------------------------------------

loc_1406083F4:                          ; CODE XREF: IoCheckLinkShareAccess+155↑j
                test    ebp, ebp
                jnz     loc_1406082EB
                jmp     loc_140608351
; ---------------------------------------------------------------------------

loc_140608401:                          ; CODE XREF: IoCheckLinkShareAccess+244↑j
                test    ebp, ebp
                jnz     short loc_1406083D6
                jmp     loc_140608351
IoCheckLinkShareAccess endp
