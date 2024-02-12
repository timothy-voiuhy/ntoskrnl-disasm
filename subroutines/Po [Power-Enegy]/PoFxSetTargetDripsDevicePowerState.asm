PoFxSetTargetDripsDevicePowerState proc near
                                        ; DATA XREF: .pdata:000000014011F8EC↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 30h
                mov     eax, cs:dword_140C24718
                xor     ebx, ebx
                mov     [rsp+48h+arg_10], ebx
                mov     edi, edx
                mov     [rsp+48h+arg_18], ebx
                mov     rsi, rcx
                test    eax, eax
                js      short loc_1408E5C1F
                mov     ebx, 0C00000BBh
                jmp     loc_1408E5D0E
; ---------------------------------------------------------------------------

loc_1408E5C1F:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+23↑j
                cmp     edi, 1
                jz      loc_1408E5D09
                cmp     edi, 4
                jg      loc_1408E5D09
                mov     ebp, cs:dword_140C4FF00
                cmp     ebp, 0FFFFFFFFh
                jnz     short loc_1408E5C46
                mov     ebx, 0C0000001h
                jmp     loc_1408E5D0E
; ---------------------------------------------------------------------------

loc_1408E5C46:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+4A↑j
                test    rsi, rsi
                jz      loc_1408E5D09
                call    sub_1402BD16C
                xor     eax, eax
                lock cmpxchg [rsi+338h], ebx
                test    al, 10h
                jnz     short loc_1408E5C69

loc_1408E5C62:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+80↓j
                                        ; PoFxSetTargetDripsDevicePowerState+9D↓j ...
                mov     ebx, 0C0000001h
                jmp     short loc_1408E5CCF
; ---------------------------------------------------------------------------

loc_1408E5C69:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+70↑j
                mov     rcx, [rsi+38h]
                test    rcx, rcx
                jz      short loc_1408E5C62
                lea     rax, [rsp+48h+arg_18]
                mov     r8b, 1
                lea     r9, [rsp+48h+arg_10]
                mov     [rsp+48h+var_28], rax
                mov     edx, ebp
                call    sub_140574B50
                test    al, al
                jz      short loc_1408E5C62
                mov     eax, [rsp+48h+arg_18]
                test    edi, edi
                jnz     short loc_1408E5C9D
                cmp     [rsp+48h+arg_10], eax
                jz      short loc_1408E5CCF

loc_1408E5C9D:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+A5↑j
                cmp     edi, [rsp+48h+arg_10]
                jz      short loc_1408E5CCF
                cmp     eax, 1
                jle     short loc_1408E5CB0
                test    edi, edi
                jz      short loc_1408E5CB0
                cmp     edi, eax
                jle     short loc_1408E5C62

loc_1408E5CB0:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+B6↑j
                                        ; PoFxSetTargetDripsDevicePowerState+BA↑j
                mov     edx, 40h ; '@'
                mov     ecx, 200h
                mov     r8d, 4D584650h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jnz     short loc_1408E5CD9
                mov     ebx, 0C000009Ah

loc_1408E5CCF:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+77↑j
                                        ; PoFxSetTargetDripsDevicePowerState+AB↑j ...
                mov     rcx, rsi
                call    sub_14056C620
                jmp     short loc_1408E5D0E
; ---------------------------------------------------------------------------

loc_1408E5CD9:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+D8↑j
                lea     rcx, [rax+20h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     r8, sub_1408E6EB0
                mov     [rax+10h], rsi
                mov     edx, 1
                mov     [rax+18h], edi
                mov     [rcx+10h], r8
                mov     [rcx+18h], rax
                mov     [rcx], rbx
                call    ExQueueWorkItem
                jmp     short loc_1408E5D0E
; ---------------------------------------------------------------------------

loc_1408E5D09:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+32↑j
                                        ; PoFxSetTargetDripsDevicePowerState+3B↑j ...
                mov     ebx, 0C000000Dh

loc_1408E5D0E:                          ; CODE XREF: PoFxSetTargetDripsDevicePowerState+2A↑j
                                        ; PoFxSetTargetDripsDevicePowerState+51↑j ...
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxSetTargetDripsDevicePowerState endp
