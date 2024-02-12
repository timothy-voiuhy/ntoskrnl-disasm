_ultoa_s        proc near               ; DATA XREF: .pdata:00000001400E0D00↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    sub_1403D6790
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ultoa_s        endp

byte_1403D6654  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0D00↑o

; =============== S U B R O U T I N E =======================================


sub_1403D665C   proc near               ; CODE XREF: _i64toa_s+19↑p
                                        ; _ui64toa_s+9↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     r11, r8
                mov     r10, rdx
                test    rdx, rdx
                jz      loc_1403D6753
                test    r8, r8
                jz      loc_1403D6753
                mov     byte ptr [rdx], 0
                mov     edx, [rsp+38h+arg_20]
                mov     eax, edx
                neg     eax
                sbb     r8, r8
                neg     r8
                inc     r8
                cmp     r11, r8
                ja      short loc_1403D66C5

loc_1403D66A6:                          ; CODE XREF: sub_1403D665C+D4↓j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 22h ; '"'
                jmp     loc_1403D676D
; ---------------------------------------------------------------------------

loc_1403D66C5:                          ; CODE XREF: sub_1403D665C+48↑j
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D6753
                xor     edi, edi
                mov     rbx, r10
                test    edx, edx
                jz      short loc_1403D66EB
                mov     byte ptr [r10], 2Dh ; '-'
                lea     rbx, [r10+1]
                mov     edi, 1
                neg     rcx

loc_1403D66EB:                          ; CODE XREF: sub_1403D665C+7D↑j
                mov     r8, rbx
                mov     ebp, r9d

loc_1403D66F1:                          ; CODE XREF: sub_1403D665C+C9↓j
                xor     edx, edx
                lea     rsi, [rbx+1]
                mov     rax, rcx
                mov     r9, rbx
                div     rbp
                mov     rcx, rax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     r14d, [rax-27h]
                cmovbe  eax, r14d
                inc     rdi
                add     al, dl
                mov     [rbx], al
                test    rcx, rcx
                jz      short loc_1403D6727
                mov     rbx, rsi
                cmp     rdi, r11
                jb      short loc_1403D66F1

loc_1403D6727:                          ; CODE XREF: sub_1403D665C+C1↑j
                cmp     rdi, r11
                jb      short loc_1403D6735
                mov     byte ptr [r10], 0
                jmp     loc_1403D66A6
; ---------------------------------------------------------------------------

loc_1403D6735:                          ; CODE XREF: sub_1403D665C+CE↑j
                mov     byte ptr [rsi], 0

loc_1403D6738:                          ; CODE XREF: sub_1403D665C+F1↓j
                mov     al, [r8]
                mov     cl, [r9]
                mov     [r9], al
                dec     r9
                mov     [r8], cl
                inc     r8
                cmp     r8, r9
                jb      short loc_1403D6738
                xor     eax, eax
                jmp     short loc_1403D676D
; ---------------------------------------------------------------------------

loc_1403D6753:                          ; CODE XREF: sub_1403D665C+22↑j
                                        ; sub_1403D665C+2B↑j ...
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D676D:                          ; CODE XREF: sub_1403D665C+64↑j
                                        ; sub_1403D665C+F5↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D665C   endp

algn_1403D6789:                         ; DATA XREF: .pdata:00000001400E0D0C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403D6790   proc near               ; CODE XREF: _ltoa_s+18↑p
                                        ; _ultoa_s+9↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     ebp, r9d
                mov     r11, r8
                mov     r10, rdx
                test    rdx, rdx
                jz      loc_1403D687B
                test    r8, r8
                jz      loc_1403D687B
                mov     byte ptr [rdx], 0
                mov     edx, [rsp+38h+arg_20]
                mov     eax, edx
                neg     eax
                sbb     r8, r8
                neg     r8
                inc     r8
                cmp     r11, r8
                ja      short loc_1403D67FC

loc_1403D67DD:                          ; CODE XREF: sub_1403D6790+CB↓j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 22h ; '"'
                jmp     loc_1403D6895
; ---------------------------------------------------------------------------

loc_1403D67FC:                          ; CODE XREF: sub_1403D6790+4B↑j
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      short loc_1403D687B
                xor     edi, edi
                mov     rbx, r10
                test    edx, edx
                jz      short loc_1403D681D
                mov     byte ptr [r10], 2Dh ; '-'
                lea     rbx, [r10+1]
                mov     edi, 1
                neg     ecx

loc_1403D681D:                          ; CODE XREF: sub_1403D6790+7C↑j
                mov     r8, rbx

loc_1403D6820:                          ; CODE XREF: sub_1403D6790+C0↓j
                xor     edx, edx
                lea     rsi, [rbx+1]
                mov     eax, ecx
                mov     r9, rbx
                div     ebp
                mov     ecx, eax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     r14d, [rax-27h]
                cmovbe  eax, r14d
                inc     rdi
                add     al, dl
                mov     [rbx], al
                test    ecx, ecx
                jz      short loc_1403D6852
                mov     rbx, rsi
                cmp     rdi, r11
                jb      short loc_1403D6820

loc_1403D6852:                          ; CODE XREF: sub_1403D6790+B8↑j
                cmp     rdi, r11
                jb      short loc_1403D685D
                mov     byte ptr [r10], 0
                jmp     short loc_1403D67DD
; ---------------------------------------------------------------------------

loc_1403D685D:                          ; CODE XREF: sub_1403D6790+C5↑j
                mov     byte ptr [rsi], 0

loc_1403D6860:                          ; CODE XREF: sub_1403D6790+E5↓j
                mov     al, [r8]
                mov     cl, [r9]
                mov     [r9], al
                dec     r9
                mov     [r8], cl
                inc     r8
                cmp     r8, r9
                jb      short loc_1403D6860
                xor     eax, eax
                jmp     short loc_1403D6895
; ---------------------------------------------------------------------------

loc_1403D687B:                          ; CODE XREF: sub_1403D6790+25↑j
                                        ; sub_1403D6790+2E↑j ...
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D6895:                          ; CODE XREF: sub_1403D6790+67↑j
                                        ; sub_1403D6790+E9↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D6790   endp

algn_1403D68B1:                         ; DATA XREF: .pdata:00000001400E0D18↑o
                align 20h
; Exported entry 2955. _i64tow_s

; =============== S U B R O U T I N E =======================================


