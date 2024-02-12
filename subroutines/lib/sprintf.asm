sprintf         proc near               ; DATA XREF: .pdata:00000001400E0928↑o

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

                mov     [rsp-10h+arg_8], rdx
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
                jz      short loc_1403D2FA8
                test    rcx, rcx
                jz      short loc_1403D2FA8
                mov     [rbp+var_30], rcx
                lea     r9, [rbp+arg_10]
                mov     [rbp+var_40], rcx
                xor     r8d, r8d
                lea     rcx, [rbp+var_40]
                mov     [rbp+var_38], 7FFFFFFFh
                mov     [rbp+var_28], 42h ; 'B'
                call    sub_1403D500C
                sub     [rbp+var_38], 1
                mov     ebx, eax
                js      short loc_1403D2F99
                mov     rcx, [rbp+var_40]
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D2FA4
; ---------------------------------------------------------------------------

loc_1403D2F99:                          ; CODE XREF: sprintf+5E↑j
                lea     rdx, [rbp+var_40]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D2FA4:                          ; CODE XREF: sprintf+67↑j
                mov     eax, ebx
                jmp     short loc_1403D2FC0
; ---------------------------------------------------------------------------

loc_1403D2FA8:                          ; CODE XREF: sprintf+2B↑j
                                        ; sprintf+30↑j
                and     [rsp+78h+var_58], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D2FC0:                          ; CODE XREF: sprintf+76↑j
                add     rsp, 78h
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sprintf         endp

algn_1403D2FC8:                         ; DATA XREF: .pdata:00000001400E0928↑o
                align 10h
; Exported entry 3036. sqrt

; =============== S U B R O U T I N E =======================================


