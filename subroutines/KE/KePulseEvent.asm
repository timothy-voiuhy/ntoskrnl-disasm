KePulseEvent    proc near               ; CODE XREF: sub_1402144B0+F9↑p
                                        ; sub_140238E40+18E↑p ...

var_68          = byte ptr -68h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047AD0A SIZE 00000315 BYTES

                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     bl, [rcx]
                mov     rsi, rcx
                and     bl, 7Fh
                mov     rcx, cr8
                mov     [rsp+88h+var_58], rcx
                mov     ebp, 2
                mov     cr8, rbp
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047AD0A

loc_14033A981:                          ; CODE XREF: KePulseEvent+1403CC↓j
                                        ; KePulseEvent+1403D5↓j ...
                mov     rdi, gs:20h
                mov     rcx, rsi
                mov     [rsp+88h+arg_18], rdi
                call    sub_1402AF4F0
                mov     eax, [rsi+4]
                mov     [rsp+88h+arg_0], eax
                test    eax, eax
                jnz     short loc_14033A9CA
                mov     dword ptr [rsi+4], 1
                lea     r14, [rsi+8]
                mov     r15, [r14]
                test    bl, bl
                jnz     loc_14047AEE0

loc_14033A9BE:                          ; CODE XREF: KePulseEvent+102↓j
                                        ; KePulseEvent+1406C8↓j
                cmp     r15, r14
                jnz     short loc_14033AA1E
                mov     [r14+8], r14
                mov     [r14], r14

loc_14033A9CA:                          ; CODE XREF: KePulseEvent+66↑j
                                        ; KePulseEvent+140457↓j ...
                and     dword ptr [rsi+4], 0
                lock and dword ptr [rsi], 0FFFFFF7Fh
                neg     [rsp+88h+arg_10]
                mov     r8d, 1
                mov     rcx, [rsp+88h+var_58]
                mov     r9d, [rsp+88h+arg_8]
                sbb     edx, edx
                mov     [rsp+88h+var_68], cl
                and     edx, 3
                mov     rcx, [rsp+88h+arg_18]
                call    sub_14023E110
                mov     eax, [rsp+88h+arg_0]
                add     rsp, 48h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14033AA1E:                          ; CODE XREF: KePulseEvent+81↑j
                mov     rbx, r15
                mov     r15, [r15]
                mov     al, [rbx+10h]
                cmp     al, 1
                jnz     loc_14047AEEE
                movzx   r8d, word ptr [rbx+12h]

loc_14033AA34:                          ; CODE XREF: KePulseEvent+1406D3↓j
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14023CD30
                jmp     loc_14033A9BE
KePulseEvent    endp

; ---------------------------------------------------------------------------
algn_14033AA47:                         ; DATA XREF: .rdata:000000014007E8F4↑o
                                        ; .pdata:00000001400D6CD4↑o
                align 10h
; Exported entry 236. ExInitializeAutoExpandPushLock

; =============== S U B R O U T I N E =======================================


