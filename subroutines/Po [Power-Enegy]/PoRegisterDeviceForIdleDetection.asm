PoRegisterDeviceForIdleDetection proc near
                                        ; CODE XREF: sub_1402F0958+1E↑p
                                        ; DATA XREF: .rdata:000000014006DA64↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404632B8 SIZE 00000133 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebx, ebx
                mov     r13d, r9d
                mov     r15d, r8d
                mov     r12d, edx
                mov     rsi, rcx
                test    edx, edx
                jnz     short loc_1402F0D15
                test    r8d, r8d
                jnz     short loc_1402F0D15
                lea     rcx, qword_140C23B10
                call    KeAcquireSpinLockRaiseToDpc
                movzx   ebp, al
                mov     rax, [rsi+138h]
                mov     rdx, [rax+18h]
                test    rdx, rdx
                jnz     short loc_1402F0D04

loc_1402F0CC3:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+9E↓j
                                        ; PoRegisterDeviceForIdleDetection+172689↓j
                lea     rcx, qword_140C23B10
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404632FE

loc_1402F0CDD:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+172690↓j
                                        ; PoRegisterDeviceForIdleDetection+17269C↓j ...
                mov     cr8, rbp

loc_1402F0CE1:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+AC↓j
                                        ; PoRegisterDeviceForIdleDetection+D1↓j ...
                mov     rbp, [rsp+38h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     r12, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402F0D04:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+51↑j
                lea     rax, [rdx+20h]
                mov     rcx, [rax]
                cmp     rcx, rax
                jz      short loc_1402F0CC3
                jmp     loc_1404632B8
; ---------------------------------------------------------------------------

loc_1402F0D15:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+2D↑j
                                        ; PoRegisterDeviceForIdleDetection+32↑j
                lea     eax, [r9-2]
                cmp     eax, 2
                ja      short loc_1402F0CE1
                mov     eax, [rcx+48h]
                mov     r14d, ebx
                cmp     eax, 7
                jz      loc_140463362
                cmp     eax, 2Dh ; '-'
                jz      loc_140463362

loc_1402F0D36:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+17270B↓j
                call    sub_140399CE4
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1402F0CE1
                lea     rcx, qword_140C23B10
                call    KeAcquireSpinLockRaiseToDpc
                movzx   ebp, al
                lea     rax, [rsi+20h]
                mov     [rsi+10h], r12d
                mov     [rsi+14h], r15d
                mov     [rsi+34h], r13d
                mov     [rsi+30h], r14d
                cmp     [rax], rax
                jnz     short loc_1402F0D9A
                mov     dword ptr [rsi+38h], 1
                lea     rdx, qword_140C23B20
                mov     rcx, cs:qword_140C23B28
                cmp     [rcx], rdx
                jnz     loc_140463380
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     cs:qword_140C23B28, rax

loc_1402F0D9A:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+F9↑j
                lea     rcx, qword_140C23B10
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140463387

loc_1402F0DB4:                          ; CODE XREF: PoRegisterDeviceForIdleDetection+172719↓j
                                        ; PoRegisterDeviceForIdleDetection+172725↓j ...
                mov     cr8, rbp
                call    sub_1402B3A30
                mov     rbx, rsi
                jmp     loc_1402F0CE1
PoRegisterDeviceForIdleDetection endp
