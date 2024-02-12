PsSetProcessWin32Process proc near      ; DATA XREF: .rdata:000000014008495C↑o
                                        ; .pdata:0000000140105DBC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082979E SIZE 0000005F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, gs:188h
                xor     edi, edi
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     r14, r8
                mov     r12, rdx
                mov     rsi, rcx
                add     [r15+1E4h], bx
                lea     rbp, [rcx+438h]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                test    r12, r12
                jz      short loc_14070A394
                mov     eax, [rsi+464h]
                test    al, 8
                jnz     loc_1408297F3
                cmp     [rsi+508h], rdi
                jnz     loc_1408297F3
                mov     [rsi+508h], r12
                mov     rax, [rsi+970h]
                mov     rcx, rax
                shr     rcx, 1Eh
                or      rcx, rax
                test    rcx, 3FFFFFFFh
                jz      short loc_14070A3A4
                jmp     loc_14082979E
; ---------------------------------------------------------------------------

loc_14070A394:                          ; CODE XREF: PsSetProcessWin32Process+51↑j
                cmp     [rsi+508h], r14
                jnz     short loc_14070A3EE
                mov     [rsi+508h], rdi

loc_14070A3A4:                          ; CODE XREF: PsSetProcessWin32Process+8D↑j
                                        ; PsSetProcessWin32Process+F3↓j ...
                lock xadd [rbp+0], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_14070A3E4

loc_14070A3B2:                          ; CODE XREF: PsSetProcessWin32Process+EC↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14070A3E4:                          ; CODE XREF: PsSetProcessWin32Process+B0↑j
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_14070A3B2
; ---------------------------------------------------------------------------

loc_14070A3EE:                          ; CODE XREF: PsSetProcessWin32Process+9B↑j
                mov     edi, 0C0000001h
                jmp     short loc_14070A3A4
PsSetProcessWin32Process endp
