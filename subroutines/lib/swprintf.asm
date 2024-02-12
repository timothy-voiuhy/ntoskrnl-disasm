swprintf        proc near               ; DATA XREF: .pdata:00000001400E0724↑o

var_58          = qword ptr -58h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = xmmword ptr -24h
var_14          = dword ptr -14h
arg_8           = qword ptr  20h
arg_10          = qword ptr  28h
arg_18          = qword ptr  30h

                mov     [rsp-10h+arg_8], rdx ; _swprintf
                mov     [rsp-10h+arg_10], r8
                mov     [rsp-10h+arg_18], r9
                push    rbp
                push    rbx
                mov     rbp, rsp
                sub     rsp, 78h
                and     [rbp+var_34], 0
                xorps   xmm0, xmm0
                and     [rbp+var_14], 0
                movdqu  [rbp+var_24], xmm0
                test    rdx, rdx
                jz      short loc_1403D1BFD
                test    rcx, rcx
                jz      short loc_1403D1BFD
                mov     [rbp+var_30], rcx
                lea     r9, [rbp+arg_10]
                mov     [rbp+var_40], rcx
                xor     r8d, r8d
                lea     rcx, [rbp+var_40]
                mov     [rbp+var_28], 42h ; 'B'
                mov     [rbp+var_38], 7FFFFFFFh
                call    sub_1403D45E8
                sub     [rbp+var_38], 1
                mov     ebx, eax
                js      short loc_1403D1BD4
                mov     rcx, [rbp+var_40]
                mov     byte ptr [rcx], 0
                mov     rcx, [rbp+var_40]
                inc     rcx
                mov     [rbp+var_40], rcx
                jmp     short loc_1403D1BE3
; ---------------------------------------------------------------------------

loc_1403D1BD4:                          ; CODE XREF: swprintf+5E↑j
                lea     rdx, [rbp+var_40]
                xor     ecx, ecx
                call    _flsbuf
                mov     rcx, [rbp+var_40]

loc_1403D1BE3:                          ; CODE XREF: swprintf+72↑j
                sub     [rbp+var_38], 1
                js      short loc_1403D1BEE
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D1BF9
; ---------------------------------------------------------------------------

loc_1403D1BEE:                          ; CODE XREF: swprintf+87↑j
                lea     rdx, [rbp+var_40]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D1BF9:                          ; CODE XREF: swprintf+8C↑j
                mov     eax, ebx
                jmp     short loc_1403D1C15
; ---------------------------------------------------------------------------

loc_1403D1BFD:                          ; CODE XREF: swprintf+2B↑j
                                        ; swprintf+30↑j
                and     [rsp+78h+var_58], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D1C15:                          ; CODE XREF: swprintf+9B↑j
                add     rsp, 78h
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
swprintf        endp

byte_1403D1C1D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0724↑o
; Exported entry 2993. _vswprintf

; =============== S U B R O U T I N E =======================================


