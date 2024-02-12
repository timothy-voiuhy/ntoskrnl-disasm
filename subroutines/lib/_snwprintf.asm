_snwprintf      proc near               ; DATA XREF: .pdata:00000001400E06B8↑o

var_50          = qword ptr -50h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = xmmword ptr -1Ch
var_C           = dword ptr -0Ch
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

                mov     [rsp-18h+arg_10], r8
                mov     [rsp-18h+arg_18], r9
                push    rbp
                push    rbx
                push    rdi
                mov     rbp, rsp
                sub     rsp, 70h
                and     [rbp+var_2C], 0
                xorps   xmm0, xmm0
                and     [rbp+var_C], 0
                mov     r10, r8
                mov     rbx, rcx
                movdqu  [rbp+var_1C], xmm0
                test    r8, r8
                jz      loc_1403D1995
                test    rdx, rdx
                jz      short loc_1403D1911
                test    rcx, rcx
                jz      loc_1403D1995

loc_1403D1911:                          ; CODE XREF: _snwprintf+36↑j
                mov     [rbp+var_20], 42h ; 'B'
                lea     r9, [rbp+arg_18]
                mov     [rbp+var_28], rbx
                mov     [rbp+var_38], rbx
                cmp     rdx, 3FFFFFFFh
                jbe     short loc_1403D1936
                mov     [rbp+var_30], 7FFFFFFFh
                jmp     short loc_1403D193C
; ---------------------------------------------------------------------------

loc_1403D1936:                          ; CODE XREF: _snwprintf+5B↑j
                lea     eax, [rdx+rdx]
                mov     [rbp+var_30], eax

loc_1403D193C:                          ; CODE XREF: _snwprintf+64↑j
                xor     r8d, r8d
                lea     rcx, [rbp+var_38]
                mov     rdx, r10
                call    sub_1403D45E8
                mov     edi, eax
                test    rbx, rbx
                jz      short loc_1403D1991
                sub     [rbp+var_30], 1
                js      short loc_1403D196C
                mov     rcx, [rbp+var_38]
                mov     byte ptr [rcx], 0
                mov     rcx, [rbp+var_38]
                inc     rcx
                mov     [rbp+var_38], rcx
                jmp     short loc_1403D197B
; ---------------------------------------------------------------------------

loc_1403D196C:                          ; CODE XREF: _snwprintf+86↑j
                lea     rdx, [rbp+var_38]
                xor     ecx, ecx
                call    _flsbuf
                mov     rcx, [rbp+var_38]

loc_1403D197B:                          ; CODE XREF: _snwprintf+9A↑j
                sub     [rbp+var_30], 1
                js      short loc_1403D1986
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D1991
; ---------------------------------------------------------------------------

loc_1403D1986:                          ; CODE XREF: _snwprintf+AF↑j
                lea     rdx, [rbp+var_38]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D1991:                          ; CODE XREF: _snwprintf+80↑j
                                        ; _snwprintf+B4↑j
                mov     eax, edi
                jmp     short loc_1403D19AD
; ---------------------------------------------------------------------------

loc_1403D1995:                          ; CODE XREF: _snwprintf+2D↑j
                                        ; _snwprintf+3B↑j
                and     [rsp+70h+var_50], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D19AD:                          ; CODE XREF: _snwprintf+C3↑j
                add     rsp, 70h
                pop     rdi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snwprintf      endp

byte_1403D19B6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E06B8↑o

; =============== S U B R O U T I N E =======================================


sub_1403D19BC   proc near               ; CODE XREF: _stricmp+4↓p
                                        ; DATA XREF: .pdata:00000001400E06C4↑o
                mov     r10, rdx
                mov     r11, rcx

loc_1403D19C2:                          ; CODE XREF: sub_1403D19BC+37↓j
                movzx   r8d, byte ptr [r11]
                inc     r11
                movzx   edx, byte ptr [r10]
                lea     eax, [r8-41h]
                cmp     eax, 19h
                lea     r9d, [r8+20h]
                lea     ecx, [rdx-41h]
                cmova   r9d, r8d
                lea     eax, [rdx+20h]
                inc     r10
                cmp     ecx, 19h
                cmova   eax, edx
                test    r9d, r9d
                jz      short loc_1403D19F5
                cmp     r9d, eax
                jz      short loc_1403D19C2

loc_1403D19F5:                          ; CODE XREF: sub_1403D19BC+32↑j
                sub     r9d, eax
                mov     eax, r9d
                retn
sub_1403D19BC   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1403D19FD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E06C4↑o
; Exported entry 2974. _stricmp

; =============== S U B R O U T I N E =======================================


