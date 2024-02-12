strncmp         proc near               ; CODE XREF: sub_1402E6BB4+178F1B↓p
                                        ; sub_1402E6BB4+178F3A↓p ...
                test    r8, r8
                jz      short loc_1403D11FA
                sub     rdx, rcx
                mov     r9, rdx
                mov     r11, 8101010101010100h
                test    cl, 7
                jz      short loc_1403D11B9

loc_1403D119A:                          ; CODE XREF: strncmp+37↓j
                                        ; strncmp+47↓j ...
                mov     al, [rcx]
                mov     dl, [r9+rcx]
                inc     rcx
                cmp     al, dl
                jnz     short loc_1403D11FE
                dec     r8
                jz      short loc_1403D11FA
                test    al, al
                jz      short loc_1403D11FA
                test    rcx, 7
                jnz     short loc_1403D119A

loc_1403D11B9:                          ; CODE XREF: strncmp+18↑j
                                        ; strncmp+76↓j ...
                lea     rdx, [r9+rcx]
                and     dx, 0FFFh
                cmp     dx, 0FF8h
                ja      short loc_1403D119A
                mov     rax, [rcx]
                mov     rdx, [r9+rcx]
                cmp     rax, rdx
                jnz     short loc_1403D119A
                add     rcx, 8
                sub     r8, 8
                mov     r10, 7EFEFEFEFEFEFEFFh
                jbe     short loc_1403D11FA
                xor     rax, 0FFFFFFFFFFFFFFFFh
                add     r10, rdx
                xor     rax, r10
                test    r11, rax
                jz      short loc_1403D11B9
                jmp     short loc_1403D1206
; ---------------------------------------------------------------------------

loc_1403D11FA:                          ; CODE XREF: strncmp+3↑j
                                        ; strncmp+2A↑j ...
                xor     rax, rax
                retn
; ---------------------------------------------------------------------------

loc_1403D11FE:                          ; CODE XREF: strncmp+25↑j
                sbb     rax, rax
                sbb     rax, 0FFFFFFFFFFFFFFFFh
                retn
; ---------------------------------------------------------------------------

loc_1403D1206:                          ; CODE XREF: strncmp+78↑j
                test    dl, dl
                jz      short loc_1403D1231
                test    dh, dh
                jz      short loc_1403D1231
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D1231
                test    dh, dh
                jz      short loc_1403D1231
                shr     rdx, 10h
                test    dl, dl
                jz      short loc_1403D1231
                test    dh, dh
                jz      short loc_1403D1231
                shr     edx, 10h
                test    dl, dl
                jz      short loc_1403D1231
                test    dh, dh
                jnz     short loc_1403D11B9

loc_1403D1231:                          ; CODE XREF: strncmp+88↑j
                                        ; strncmp+8C↑j ...
                xor     rax, rax
                retn
strncmp         endp

; ---------------------------------------------------------------------------
byte_1403D1235  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E05D4↑o

; =============== S U B R O U T I N E =======================================


sub_1403D123C   proc near               ; CODE XREF: sub_1403D1460+19↓p
                                        ; _strtoui64+1C↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14d, r9d
                mov     r15, r8
                test    r8, r8
                jz      short loc_1403D1263
                mov     [r8], rdx

loc_1403D1263:                          ; CODE XREF: sub_1403D123C+22↑j
                test    rdx, rdx
                jz      loc_1403D142B
                test    r14d, r14d
                jz      short loc_1403D127E
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D142B

loc_1403D127E:                          ; CODE XREF: sub_1403D123C+33↑j
                movzx   ebp, byte ptr [rdx]
                lea     rbx, [rdx+1]
                xor     esi, esi
                call    sub_1403D5978
                test    byte ptr [rax+rbp*2], 8
                jz      short loc_1403D12AC

loc_1403D1292:                          ; CODE XREF: sub_1403D123C+5F↓j
                                        ; sub_1403D123C+6E↓j
                movzx   edi, byte ptr [rbx]
                inc     rbx
                cmp     dil, bpl
                jz      short loc_1403D1292
                mov     bpl, dil
                call    sub_1403D5978
                mov     al, [rax+rdi*2]
                test    al, 8
                jnz     short loc_1403D1292

loc_1403D12AC:                          ; CODE XREF: sub_1403D123C+54↑j
                mov     edi, [rsp+68h+arg_20]
                cmp     bpl, 2Dh ; '-'
                jnz     short loc_1403D12BE
                or      edi, 2
                jmp     short loc_1403D12C4
; ---------------------------------------------------------------------------

loc_1403D12BE:                          ; CODE XREF: sub_1403D123C+7B↑j
                cmp     bpl, 2Bh ; '+'
                jnz     short loc_1403D12CA

loc_1403D12C4:                          ; CODE XREF: sub_1403D123C+80↑j
                mov     bpl, [rbx]
                inc     rbx

loc_1403D12CA:                          ; CODE XREF: sub_1403D123C+86↑j
                test    r14d, r14d
                jnz     short loc_1403D12F3
                cmp     bpl, 30h ; '0'
                jz      short loc_1403D12DD
                mov     r14d, 0Ah
                jmp     short loc_1403D130F
; ---------------------------------------------------------------------------

loc_1403D12DD:                          ; CODE XREF: sub_1403D123C+97↑j
                mov     al, [rbx]
                sub     al, 58h ; 'X'
                test    al, 0DFh
                jz      short loc_1403D12ED
                mov     r14d, 8
                jmp     short loc_1403D130F
; ---------------------------------------------------------------------------

loc_1403D12ED:                          ; CODE XREF: sub_1403D123C+A7↑j
                mov     r14d, 10h

loc_1403D12F3:                          ; CODE XREF: sub_1403D123C+91↑j
                cmp     r14d, 10h
                jnz     short loc_1403D130F
                cmp     bpl, 30h ; '0'
                jnz     short loc_1403D130F
                mov     al, [rbx]
                sub     al, 58h ; 'X'
                test    al, 0DFh
                jnz     short loc_1403D130F
                mov     bpl, [rbx+1]
                add     rbx, 2

loc_1403D130F:                          ; CODE XREF: sub_1403D123C+9F↑j
                                        ; sub_1403D123C+AF↑j ...
                movsxd  rcx, r14d
                xor     edx, edx
                or      rax, 0FFFFFFFFFFFFFFFFh
                div     rcx
                mov     [rsp+68h+arg_10], rdx
                mov     r12, rax

loc_1403D1326:                          ; CODE XREF: sub_1403D123C+17A↓j
                movzx   r13d, bpl
                call    sub_1403D5978
                test    byte ptr [rax+r13*2], 4
                jz      short loc_1403D133F
                movsx   ecx, bpl
                sub     ecx, 30h ; '0'
                jmp     short loc_1403D1368
; ---------------------------------------------------------------------------

loc_1403D133F:                          ; CODE XREF: sub_1403D123C+F8↑j
                call    sub_1403D5978
                movzx   ecx, word ptr [rax+r13*2]
                mov     eax, 103h
                test    ax, cx
                jz      short loc_1403D138B
                movsx   eax, bpl
                sub     bpl, 61h ; 'a'
                cmp     bpl, 19h
                lea     ecx, [rax-20h]
                cmova   ecx, eax
                sub     ecx, 37h ; '7'

loc_1403D1368:                          ; CODE XREF: sub_1403D123C+101↑j
                cmp     ecx, r14d
                jnb     short loc_1403D138B
                or      edi, 8
                cmp     rsi, r12
                jb      short loc_1403D13A4
                jnz     short loc_1403D1383
                mov     edx, ecx
                cmp     rdx, [rsp+68h+arg_10]
                jbe     short loc_1403D13A6

loc_1403D1383:                          ; CODE XREF: sub_1403D123C+139↑j
                or      edi, 4
                test    r15, r15
                jnz     short loc_1403D13B0

loc_1403D138B:                          ; CODE XREF: sub_1403D123C+115↑j
                                        ; sub_1403D123C+12F↑j
                mov     r12, [rsp+68h+arg_8]
                dec     rbx
                test    dil, 8
                jnz     short loc_1403D13BB
                test    r15, r15
                cmovnz  rbx, r12
                xor     esi, esi
                jmp     short loc_1403D1413
; ---------------------------------------------------------------------------

loc_1403D13A4:                          ; CODE XREF: sub_1403D123C+137↑j
                mov     edx, ecx

loc_1403D13A6:                          ; CODE XREF: sub_1403D123C+145↑j
                movsxd  rax, r14d
                imul    rsi, rax
                add     rsi, rdx

loc_1403D13B0:                          ; CODE XREF: sub_1403D123C+14D↑j
                mov     bpl, [rbx]
                inc     rbx
                jmp     loc_1403D1326
; ---------------------------------------------------------------------------

loc_1403D13BB:                          ; CODE XREF: sub_1403D123C+15B↑j
                mov     rcx, 7FFFFFFFFFFFFFFFh
                test    dil, 4
                jnz     short loc_1403D13ED
                test    dil, 1
                jnz     short loc_1403D1413
                test    dil, 2
                jz      short loc_1403D13E8
                mov     rax, 8000000000000000h
                cmp     rsi, rax
                ja      short loc_1403D13ED
                jmp     short loc_1403D1413
; ---------------------------------------------------------------------------

loc_1403D13E8:                          ; CODE XREF: sub_1403D123C+199↑j
                cmp     rsi, rcx
                jbe     short loc_1403D1413

loc_1403D13ED:                          ; CODE XREF: sub_1403D123C+18D↑j
                                        ; sub_1403D123C+1A8↑j
                mov     cs:dword_140C130C8, 22h ; '"'
                test    dil, 1
                jz      short loc_1403D1403
                or      rsi, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403D1413
; ---------------------------------------------------------------------------

loc_1403D1403:                          ; CODE XREF: sub_1403D123C+1BF↑j
                mov     al, dil
                and     al, 2
                neg     al
                sbb     rsi, rsi
                neg     rsi
                add     rsi, rcx

loc_1403D1413:                          ; CODE XREF: sub_1403D123C+166↑j
                                        ; sub_1403D123C+193↑j ...
                test    r15, r15
                jz      short loc_1403D141B
                mov     [r15], rbx

loc_1403D141B:                          ; CODE XREF: sub_1403D123C+1DA↑j
                mov     rax, rsi
                neg     rax
                and     dil, 2
                cmovz   rax, rsi
                jmp     short loc_1403D1442
; ---------------------------------------------------------------------------

loc_1403D142B:                          ; CODE XREF: sub_1403D123C+2A↑j
                                        ; sub_1403D123C+3C↑j
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                xor     eax, eax

loc_1403D1442:                          ; CODE XREF: sub_1403D123C+1ED↑j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D123C   endp

algn_1403D1458:                         ; DATA XREF: .pdata:00000001400E05E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D1460   proc near               ; CODE XREF: sub_1403D151C+13↓p
                                        ; DATA XREF: .pdata:00000001400E05EC↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                mov     r9d, r8d
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, off_140005C48
                call    sub_1403D123C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1460   endp

algn_1403D1484:                         ; DATA XREF: .pdata:00000001400E05EC↑o
                align 10h
; Exported entry 2982. _strtoui64
; [00000027 BYTES: COLLAPSED FUNCTION _strtoui64. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_1403D14B7:                         ; DATA XREF: .pdata:00000001400E05F8↑o
                align 20h
; Exported entry 3055. strstr

; =============== S U B R O U T I N E =======================================


