_vswprintf      proc near               ; DATA XREF: .pdata:00000001400E0730↑o
                sub     rsp, 28h
                mov     r9, r8
                xor     r8d, r8d
                call    sub_1403D1C4C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_vswprintf      endp

byte_1403D1C45  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400E0730↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403D1C4C   proc near               ; CODE XREF: _vswprintf+A↑p
                                        ; DATA XREF: .pdata:00000001400E073C↑o

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = xmmword ptr -14h
var_4           = dword ptr -4
arg_0           = qword ptr  10h

                mov     [rsp-8+arg_0], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_24], 0
                xorps   xmm0, xmm0
                and     [rbp+var_4], 0
                movdqu  [rbp+var_14], xmm0
                test    rdx, rdx
                jz      short loc_1403D1CD7
                test    rcx, rcx
                jz      short loc_1403D1CD7
                mov     [rbp+var_20], rcx
                mov     [rbp+var_30], rcx
                lea     rcx, [rbp+var_30]
                mov     [rbp+var_18], 42h ; 'B'
                mov     [rbp+var_28], 7FFFFFFFh
                call    sub_1403D45E8
                sub     [rbp+var_28], 1
                mov     ebx, eax
                js      short loc_1403D1CAE
                mov     rcx, [rbp+var_30]
                mov     byte ptr [rcx], 0
                mov     rcx, [rbp+var_30]
                inc     rcx
                mov     [rbp+var_30], rcx
                jmp     short loc_1403D1CBD
; ---------------------------------------------------------------------------

loc_1403D1CAE:                          ; CODE XREF: sub_1403D1C4C+4C↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf
                mov     rcx, [rbp+var_30]

loc_1403D1CBD:                          ; CODE XREF: sub_1403D1C4C+60↑j
                sub     [rbp+var_28], 1
                js      short loc_1403D1CC8
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D1CD3
; ---------------------------------------------------------------------------

loc_1403D1CC8:                          ; CODE XREF: sub_1403D1C4C+75↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D1CD3:                          ; CODE XREF: sub_1403D1C4C+7A↑j
                mov     eax, ebx
                jmp     short loc_1403D1CEF
; ---------------------------------------------------------------------------

loc_1403D1CD7:                          ; CODE XREF: sub_1403D1C4C+20↑j
                                        ; sub_1403D1C4C+25↑j
                and     [rsp+60h+var_40], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D1CEF:                          ; CODE XREF: sub_1403D1C4C+89↑j
                mov     rbx, [rsp+60h+arg_0]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D1C4C   endp

byte_1403D1CFB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400E073C↑o
; Exported entry 2994. _wcsicmp

; =============== S U B R O U T I N E =======================================


