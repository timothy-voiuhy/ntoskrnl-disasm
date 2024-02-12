KeIpiGenericCall proc near              ; CODE XREF: sub_14038D54C+70↑p
                                        ; sub_1403AB224+191↓p ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 00000001404A6356 SIZE 00000129 BYTES

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 30h
                mov     rbp, rdx
                mov     r14, rcx
                mov     rbx, cr8
                or      rdi, 0FFFFFFFFFFFFFFFFh
                lea     r12d, [rdi+0Dh]
                cmp     bl, r12b
                jnb     short loc_1403A4B4D
                mov     r10, cr8
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A6356

loc_1403A4B4D:                          ; CODE XREF: KeIpiGenericCall+25↑j
                                        ; KeIpiGenericCall+101848↓j ...
                and     [rsp+58h+arg_10], 0
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                lea     rcx, qword_140D23340
                mov     [rsp+58h+arg_0], eax
                lea     esi, [rax-1]
                call    KeAcquireSpinLockAtDpcLevel
                test    esi, esi
                jz      short loc_1403A4B96
                xor     edx, edx
                lea     rax, [rsp+58h+arg_0]
                mov     [rsp+58h+var_30], rax
                lea     r8, sub_1403A5090
                mov     r9, r14
                mov     [rsp+58h+var_38], rbp
                lea     ecx, [rdx+1]
                call    sub_1402B91B0

loc_1403A4B96:                          ; CODE XREF: KeIpiGenericCall+61↑j
                                        ; KeIpiGenericCall+99↓j
                mov     eax, [rsp+58h+arg_0]
                cmp     eax, 1
                jz      short loc_1403A4BAB
                lea     rcx, [rsp+58h+arg_10]
                call    sub_1402C8C70
                jmp     short loc_1403A4B96
; ---------------------------------------------------------------------------

loc_1403A4BAB:                          ; CODE XREF: KeIpiGenericCall+8D↑j
                mov     rcx, cr8
                mov     eax, 0Eh
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A639A

loc_1403A4BC6:                          ; CODE XREF: KeIpiGenericCall+10188C↓j
                                        ; KeIpiGenericCall+101895↓j ...
                mov     rcx, rbp
                mov     [rsp+58h+arg_0], 0
                mov     rax, r14
                call    sub_1404079D0
                mov     rbp, rax
                test    esi, esi
                jz      short loc_1403A4C0E
                cmp     bl, r12b
                ja      short loc_1403A4BF7
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_1404A63DC

loc_1403A4BF3:                          ; CODE XREF: KeIpiGenericCall+1018CF↓j
                                        ; KeIpiGenericCall+1018DD↓j ...
                mov     cr8, r12

loc_1403A4BF7:                          ; CODE XREF: KeIpiGenericCall+D3↑j
                mov     rcx, gs:20h

loc_1403A4C00:                          ; CODE XREF: KeIpiGenericCall+FC↓j
                mov     eax, [rcx+2D80h]
                test    eax, eax
                jz      short loc_1403A4C0E
                pause
                jmp     short loc_1403A4C00
; ---------------------------------------------------------------------------

loc_1403A4C0E:                          ; CODE XREF: KeIpiGenericCall+CE↑j
                                        ; KeIpiGenericCall+F8↑j
                lea     rcx, qword_140D23340
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A641F

loc_1403A4C28:                          ; CODE XREF: KeIpiGenericCall+101911↓j
                                        ; KeIpiGenericCall+10191D↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+58h+arg_8]
                mov     rax, rbp
                add     rsp, 30h
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeIpiGenericCall endp
