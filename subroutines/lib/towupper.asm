towupper        proc near               ; CODE XREF: sub_1407BF20C+53↓p
                                        ; DATA XREF: .pdata:00000001400E09E8↑o
                sub     rsp, 28h
                call    RtlUpcaseUnicodeChar
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
towupper        endp

byte_1403D3A1F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400E09E8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403D3A28   proc near               ; CODE XREF: vsprintf+A↓p
                                        ; DATA XREF: .pdata:00000001400E09F4↑o

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
                jz      short loc_1403D3A8E
                test    rcx, rcx
                jz      short loc_1403D3A8E
                mov     [rbp+var_20], rcx
                mov     [rbp+var_30], rcx
                lea     rcx, [rbp+var_30]
                mov     [rbp+var_28], 7FFFFFFFh
                mov     [rbp+var_18], 42h ; 'B'
                call    sub_1403D500C
                sub     [rbp+var_28], 1
                mov     ebx, eax
                js      short loc_1403D3A7F
                mov     rcx, [rbp+var_30]
                mov     byte ptr [rcx], 0
                jmp     short loc_1403D3A8A
; ---------------------------------------------------------------------------

loc_1403D3A7F:                          ; CODE XREF: sub_1403D3A28+4C↑j
                lea     rdx, [rbp+var_30]
                xor     ecx, ecx
                call    _flsbuf

loc_1403D3A8A:                          ; CODE XREF: sub_1403D3A28+55↑j
                mov     eax, ebx
                jmp     short loc_1403D3AA6
; ---------------------------------------------------------------------------

loc_1403D3A8E:                          ; CODE XREF: sub_1403D3A28+20↑j
                                        ; sub_1403D3A28+25↑j
                and     [rsp+60h+var_40], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh

loc_1403D3AA6:                          ; CODE XREF: sub_1403D3A28+64↑j
                mov     rbx, [rsp+60h+arg_0]
                add     rsp, 60h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403D3A28   endp

algn_1403D3AB2:                         ; DATA XREF: .pdata:00000001400E09F4↑o
                align 20h
; Exported entry 3066. vsprintf

; =============== S U B R O U T I N E =======================================


