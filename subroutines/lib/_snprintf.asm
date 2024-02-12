_snprintf       proc near               ; DATA XREF: .pdata:00000001400E06AC↑o

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
                mov     rax, r8
                mov     rbx, rcx
                movdqu  [rbp+var_1C], xmm0
                test    r8, r8
                jz      short loc_1403D189E
                test    rdx, rdx
                jz      short loc_1403D1849
                test    rcx, rcx
                jz      short loc_1403D189E

loc_1403D1849:                          ; CODE XREF: _snprintf+32↑j
                mov     ecx, 7FFFFFFFh
                mov     [rbp+var_20], 42h ; 'B'
                cmp     rdx, rcx
                mov     [rbp+var_28], rbx
                lea     r9, [rbp+arg_18]
                mov     [rbp+var_38], rbx
                cmova   edx, ecx
                xor     r8d, r8d
                mov     [rbp+var_30], edx
                lea     rcx, [rbp+var_38]
                mov     rdx, rax
                call    sub_1403D500C
                mov     edi, eax
                test    rbx, rbx
                jz      short loc_1403D189A
                sub     [rbp+var_30], 1
                js      short loc_1403D188F
                mov     rcx, [rbp+var_38]
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D189A
; ---------------------------------------------------------------------------

loc_1403D188F:                          ; CODE XREF: _snprintf+74↑j
                lea     rdx, [rbp+var_38]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D189A:                          ; CODE XREF: _snprintf+6E↑j
                                        ; _snprintf+7D↑j
                mov     eax, edi
                jmp     short loc_1403D18B6
; ---------------------------------------------------------------------------

loc_1403D189E:                          ; CODE XREF: _snprintf+2D↑j
                                        ; _snprintf+37↑j
                and     [rsp+70h+var_50], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D18B6:                          ; CODE XREF: _snprintf+8C↑j
                add     rsp, 70h
                pop     rdi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snprintf       endp

byte_1403D18BF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E06AC↑o
; Exported entry 2970. _snwprintf

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

