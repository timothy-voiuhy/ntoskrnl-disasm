_vsnwprintf     proc near               ; CODE XREF: sub_14021C308+47↑p
                                        ; sub_14021D398+37↑p ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     [rsp+38h+var_18], r9
                xor     r9d, r9d
                call    sub_1403D0CD0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_vsnwprintf     endp

algn_1403D0CC7:                         ; DATA XREF: .pdata:00000001400E0574↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403D0CD0   proc near               ; CODE XREF: _vsnwprintf+C↑p
                                        ; DATA XREF: .pdata:00000001400E0580↑o

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = xmmword ptr -14h
var_4           = dword ptr -4
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_20          = qword ptr  30h

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 60h
                and     [rbp+var_24], 0
                xorps   xmm0, xmm0
                and     [rbp+var_4], 0
                mov     r11, r9
                mov     r10, r8
                mov     rbx, rcx
                movdqu  [rbp+var_14], xmm0
                test    r8, r8
                jz      loc_1403D0D96
                test    rdx, rdx
                jz      short loc_1403D0D12
                test    rcx, rcx
                jz      loc_1403D0D96

loc_1403D0D12:                          ; CODE XREF: sub_1403D0CD0+37↑j
                mov     [rbp+var_18], 42h ; 'B'
                mov     [rbp+var_20], rbx
                mov     [rbp+var_30], rbx
                cmp     rdx, 3FFFFFFFh
                jbe     short loc_1403D0D33
                mov     [rbp+var_28], 7FFFFFFFh
                jmp     short loc_1403D0D39
; ---------------------------------------------------------------------------

loc_1403D0D33:                          ; CODE XREF: sub_1403D0CD0+58↑j
                lea     eax, [rdx+rdx]
                mov     [rbp+var_28], eax

loc_1403D0D39:                          ; CODE XREF: sub_1403D0CD0+61↑j
                mov     r9, [rbp+arg_20]
                lea     rcx, [rbp+var_30]
                mov     r8, r11
                mov     rdx, r10
                call    sub_1403D45E8
                mov     edi, eax
                test    rbx, rbx
                jz      short loc_1403D0D92
                sub     [rbp+var_28], 1
                js      short loc_1403D0D6D
                mov     rcx, [rbp+var_30]
                mov     byte ptr [rcx], 0
                mov     rcx, [rbp+var_30]
                inc     rcx
                mov     [rbp+var_30], rcx
                jmp     short loc_1403D0D7C
; ---------------------------------------------------------------------------

loc_1403D0D6D:                          ; CODE XREF: sub_1403D0CD0+87↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf
                mov     rcx, [rbp+var_30]

loc_1403D0D7C:                          ; CODE XREF: sub_1403D0CD0+9B↑j
                sub     [rbp+var_28], 1
                js      short loc_1403D0D87
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D0D92
; ---------------------------------------------------------------------------

loc_1403D0D87:                          ; CODE XREF: sub_1403D0CD0+B0↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D0D92:                          ; CODE XREF: sub_1403D0CD0+81↑j
                                        ; sub_1403D0CD0+B5↑j
                mov     eax, edi
                jmp     short loc_1403D0DAE
; ---------------------------------------------------------------------------

loc_1403D0D96:                          ; CODE XREF: sub_1403D0CD0+2E↑j
                                        ; sub_1403D0CD0+3C↑j
                and     [rsp+60h+var_40], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D0DAE:                          ; CODE XREF: sub_1403D0CD0+C4↑j
                mov     rbx, [rsp+60h+arg_0]
                mov     rdi, [rsp+60h+arg_8]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D0CD0   endp

byte_1403D0DBF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0580↑o
; Exported entry 2989. _vsnprintf

; =============== S U B R O U T I N E =======================================


