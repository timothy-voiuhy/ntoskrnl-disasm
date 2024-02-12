IoEnumerateDeviceObjectList proc near   ; DATA XREF: .pdata:00000001400DCF08↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, rcx
                xor     ebx, ebx
                mov     rsi, r9
                mov     edi, r8d
                mov     r14, rdx
                lea     ecx, [rbx+0Ah]
                call    KeAcquireQueuedSpinLock
                mov     r8, [rbp+8]
                mov     r15b, al
                shr     edi, 3
                jmp     short loc_14039AC40
; ---------------------------------------------------------------------------

loc_14039AC3A:                          ; CODE XREF: IoEnumerateDeviceObjectList+43↓j
                mov     r8, [r8+10h]
                inc     ebx

loc_14039AC40:                          ; CODE XREF: IoEnumerateDeviceObjectList+38↑j
                test    r8, r8
                jnz     short loc_14039AC3A
                cmp     edi, ebx
                mov     [rsi], ebx
                mov     rbx, [rbp+8]
                sbb     esi, esi
                and     esi, 0C0000023h
                test    edi, edi
                jz      short loc_14039AC7B

loc_14039AC59:                          ; CODE XREF: IoEnumerateDeviceObjectList+79↓j
                test    rbx, rbx
                jz      short loc_14039AC7B
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     [r14], rbx
                add     r14, 8
                mov     rbx, [rbx+10h]
                add     edi, 0FFFFFFFFh
                jnz     short loc_14039AC59

loc_14039AC7B:                          ; CODE XREF: IoEnumerateDeviceObjectList+57↑j
                                        ; IoEnumerateDeviceObjectList+5C↑j
                mov     dl, r15b
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoEnumerateDeviceObjectList endp
