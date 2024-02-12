toupper         proc near               ; CODE XREF: sub_140755C3C+4A↓p
                                        ; sub_140755C3C+55↓p ...

var_20          = dword ptr -20h
var_10          = qword ptr -10h
arg_0           = dword ptr  10h
arg_8           = byte ptr  18h
arg_9           = byte ptr  19h
arg_10          = word ptr  20h
arg_18          = dword ptr  28h

                mov     [rsp-8+arg_0], ecx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 40h
                and     [rbp+arg_18], 0
                lea     rax, [rbp+arg_0]
                lea     rcx, [rbp+var_10]
                mov     [rbp+var_10], rax
                call    RtlAnsiCharToUnicodeChar
                mov     edx, 2
                mov     [rbp+arg_10], ax
                lea     r9, [rbp+arg_10]
                mov     [rsp+40h+var_20], edx
                lea     r8, [rbp+arg_18]
                lea     rcx, [rbp+arg_8]
                call    RtlUpcaseUnicodeToMultiByteN
                test    eax, eax
                jns     short loc_1403D39B8
                mov     eax, [rbp+arg_0]
                jmp     short loc_1403D39CB
; ---------------------------------------------------------------------------

loc_1403D39B8:                          ; CODE XREF: toupper+41↑j
                cmp     [rbp+arg_18], 1
                movzx   eax, [rbp+arg_8]
                jz      short loc_1403D39CB
                movzx   ecx, [rbp+arg_9]
                shl     eax, 8
                or      eax, ecx

loc_1403D39CB:                          ; CODE XREF: toupper+46↑j
                                        ; toupper+50↑j
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
toupper         endp

algn_1403D39D2:                         ; DATA XREF: .pdata:00000001400E09D0↑o
                align 20h
; Exported entry 3062. towlower

; =============== S U B R O U T I N E =======================================


