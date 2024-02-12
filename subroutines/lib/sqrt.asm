sqrt            proc near               ; DATA XREF: .pdata:00000001400E0934↑o

var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                movsd   [rsp+arg_0], xmm0
                sub     rsp, 58h
                mov     rcx, 7FF0000000000000h
                xorps   xmm1, xmm1
                movsd   [rsp+58h+arg_8], xmm1
                movsd   [rsp+58h+arg_10], xmm0
                mov     rdx, [rsp+58h+arg_10]
                mov     rax, rdx
                and     rax, rcx
                cmp     rax, rcx
                jnz     loc_1403D309E
                mov     rax, 0FFFFFFFFFFFFFh
                test    rax, rdx
                jz      short loc_1403D3060
                movsd   xmm0, [rsp+58h+arg_0]
                mov     r9d, 1
                mov     [rsp+58h+var_18], r9d
                mov     r8, 8000000000000h
                movsd   [rsp+58h+var_20], xmm1
                or      r8, rdx
                movsd   [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_30], 21h ; '!'
                and     [rsp+58h+var_38], 0

loc_1403D304D:                          ; CODE XREF: sqrt+CC↓j
                mov     edx, 5
                lea     rcx, aSqrt      ; "sqrt"
                call    sub_1403D5B80
                jmp     short loc_1403D30CC
; ---------------------------------------------------------------------------

loc_1403D3060:                          ; CODE XREF: sqrt+44↑j
                test    rdx, rdx
                jns     short loc_1403D309E

loc_1403D3065:                          ; CODE XREF: sqrt+E8↓j
                movsd   xmm0, [rsp+58h+arg_0]
                mov     r9d, 1
                mov     [rsp+58h+var_18], r9d
                mov     r8, 0FFF8000000000000h
                movsd   [rsp+58h+var_20], xmm1
                movsd   [rsp+58h+var_28], xmm0
                mov     [rsp+58h+var_30], 21h ; '!'
                mov     [rsp+58h+var_38], 8
                jmp     short loc_1403D304D
; ---------------------------------------------------------------------------

loc_1403D309E:                          ; CODE XREF: sqrt+31↑j
                                        ; sqrt+93↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                test    rax, rdx
                setnz   cl
                bt      rdx, 3Fh ; '?'
                setb    al
                test    al, cl
                jnz     short loc_1403D3065
                sqrtsd  xmm2, [rsp+58h+arg_0]
                movsd   [rsp+58h+arg_8], xmm2
                movsd   xmm0, [rsp+58h+arg_8]

loc_1403D30CC:                          ; CODE XREF: sqrt+8E↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sqrt            endp

algn_1403D30D2:                         ; DATA XREF: .pdata:00000001400E0934↑o
                align 20h
; Exported entry 3037. sqrtf
; [000000D1 BYTES: COLLAPSED FUNCTION sqrtf. PRESS CTRL-NUMPAD+ TO EXPAND]
byte_1403D31B1  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0940↑o
                align 10h
; Exported entry 3040. strcat

; =============== S U B R O U T I N E =======================================


