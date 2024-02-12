_ultow_s        proc near               ; CODE XREF: sub_1406D57D4+526↓p
                                        ; sub_140781F2C+96↓p ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                and     [rsp+38h+var_18], 0
                call    sub_1403D6AA0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_ultow_s        endp

byte_1403D6954  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0D48↑o

; =============== S U B R O U T I N E =======================================


sub_1403D695C   proc near               ; CODE XREF: _i64tow_s+19↑p
                                        ; _ui64tow_s+9↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
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
                xor     r15d, r15d
                mov     r11, r8
                mov     r10, rdx
                test    rdx, rdx
                jz      loc_1403D6A66
                test    r8, r8
                jz      loc_1403D6A66
                mov     r8d, [rsp+48h+arg_20]
                mov     eax, r8d
                mov     [rdx], r15w
                neg     eax
                sbb     rdx, rdx
                neg     rdx
                inc     rdx
                cmp     r11, rdx
                ja      short loc_1403D69C9

loc_1403D69AB:                          ; CODE XREF: sub_1403D695C+E0↓j
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 22h ; '"'
                jmp     loc_1403D6A7F
; ---------------------------------------------------------------------------

loc_1403D69C9:                          ; CODE XREF: sub_1403D695C+4D↑j
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D6A66
                mov     rdi, r15
                mov     rbx, r10
                test    r8d, r8d
                jz      short loc_1403D69F4
                mov     eax, 2Dh ; '-'
                lea     rbx, [r10+2]
                mov     [r10], ax
                neg     rcx
                lea     edi, [rax-2Ch]

loc_1403D69F4:                          ; CODE XREF: sub_1403D695C+83↑j
                mov     r8, rbx
                mov     ebp, r9d

loc_1403D69FA:                          ; CODE XREF: sub_1403D695C+D5↓j
                xor     edx, edx
                lea     rsi, [rbx+2]
                mov     rax, rcx
                mov     r9, rbx
                div     rbp
                mov     rcx, rax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     r14d, [rax-27h]
                cmovbe  ax, r14w
                inc     rdi
                add     ax, dx
                mov     [rbx], ax
                test    rcx, rcx
                jz      short loc_1403D6A33
                mov     rbx, rsi
                cmp     rdi, r11
                jb      short loc_1403D69FA

loc_1403D6A33:                          ; CODE XREF: sub_1403D695C+CD↑j
                cmp     rdi, r11
                jb      short loc_1403D6A41
                mov     [r10], r15w
                jmp     loc_1403D69AB
; ---------------------------------------------------------------------------

loc_1403D6A41:                          ; CODE XREF: sub_1403D695C+DA↑j
                mov     [rsi], r15w

loc_1403D6A45:                          ; CODE XREF: sub_1403D695C+104↓j
                movzx   eax, word ptr [r8]
                movzx   ecx, word ptr [r9]
                mov     [r9], ax
                sub     r9, 2
                mov     [r8], cx
                add     r8, 2
                cmp     r8, r9
                jb      short loc_1403D6A45
                xor     eax, eax
                jmp     short loc_1403D6A7F
; ---------------------------------------------------------------------------

loc_1403D6A66:                          ; CODE XREF: sub_1403D695C+24↑j
                                        ; sub_1403D695C+2D↑j ...
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D6A7F:                          ; CODE XREF: sub_1403D695C+68↑j
                                        ; sub_1403D695C+108↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D695C   endp

algn_1403D6A99:                         ; DATA XREF: .pdata:00000001400E0D54↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403D6AA0   proc near               ; CODE XREF: _ltow_s+18↑p
                                        ; _ultow_s+9↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
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
                xor     r15d, r15d
                mov     ebp, r9d
                mov     r11, r8
                mov     r10, rdx
                test    rdx, rdx
                jz      loc_1403D6BA5
                test    r8, r8
                jz      loc_1403D6BA5
                mov     r8d, [rsp+48h+arg_20]
                mov     eax, r8d
                mov     [rdx], r15w
                neg     eax
                sbb     rdx, rdx
                neg     rdx
                inc     rdx
                cmp     r11, rdx
                ja      short loc_1403D6B10

loc_1403D6AF2:                          ; CODE XREF: sub_1403D6AA0+DB↓j
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 22h ; '"'
                jmp     loc_1403D6BBE
; ---------------------------------------------------------------------------

loc_1403D6B10:                          ; CODE XREF: sub_1403D6AA0+50↑j
                lea     eax, [r9-2]
                cmp     eax, 22h ; '"'
                ja      loc_1403D6BA5
                mov     rdi, r15
                mov     rbx, r10
                test    r8d, r8d
                jz      short loc_1403D6B3A
                mov     eax, 2Dh ; '-'
                lea     rbx, [r10+2]
                mov     [r10], ax
                neg     ecx
                lea     edi, [rax-2Ch]

loc_1403D6B3A:                          ; CODE XREF: sub_1403D6AA0+86↑j
                mov     r8, rbx

loc_1403D6B3D:                          ; CODE XREF: sub_1403D6AA0+D0↓j
                xor     edx, edx
                lea     rsi, [rbx+2]
                mov     eax, ecx
                mov     r9, rbx
                div     ebp
                mov     ecx, eax
                cmp     edx, 9
                mov     eax, 57h ; 'W'
                lea     r14d, [rax-27h]
                cmovbe  ax, r14w
                inc     rdi
                add     ax, dx
                mov     [rbx], ax
                test    ecx, ecx
                jz      short loc_1403D6B72
                mov     rbx, rsi
                cmp     rdi, r11
                jb      short loc_1403D6B3D

loc_1403D6B72:                          ; CODE XREF: sub_1403D6AA0+C8↑j
                cmp     rdi, r11
                jb      short loc_1403D6B80
                mov     [r10], r15w
                jmp     loc_1403D6AF2
; ---------------------------------------------------------------------------

loc_1403D6B80:                          ; CODE XREF: sub_1403D6AA0+D5↑j
                mov     [rsi], r15w

loc_1403D6B84:                          ; CODE XREF: sub_1403D6AA0+FF↓j
                movzx   eax, word ptr [r8]
                movzx   ecx, word ptr [r9]
                mov     [r9], ax
                sub     r9, 2
                mov     [r8], cx
                add     r8, 2
                cmp     r8, r9
                jb      short loc_1403D6B84
                xor     eax, eax
                jmp     short loc_1403D6BBE
; ---------------------------------------------------------------------------

loc_1403D6BA5:                          ; CODE XREF: sub_1403D6AA0+27↑j
                                        ; sub_1403D6AA0+30↑j ...
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                mov     eax, 16h

loc_1403D6BBE:                          ; CODE XREF: sub_1403D6AA0+6B↑j
                                        ; sub_1403D6AA0+103↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D6AA0   endp

algn_1403D6BD8:                         ; DATA XREF: .pdata:00000001400E0D60↑o
                align 20h
; Exported entry 2963. _makepath_s

; =============== S U B R O U T I N E =======================================


