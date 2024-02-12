IoAdjustStackSizeForRedirection proc near
                                        ; DATA XREF: .pdata:00000001400F26C4↑o

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
                mov     rsi, rcx
                xor     ebp, ebp
                mov     r14, r8
                mov     rbx, rdx
                lea     ecx, [rbp+0Ah]
                call    KeAcquireQueuedSpinLock
                mov     dil, [rsi+4Ch]
                mov     r15b, al
                mov     bl, [rbx+4Ch]
                cmp     dil, bl
                jl      short loc_14050585E
                xor     bl, bl
                jmp     short loc_1405058AB
; ---------------------------------------------------------------------------

loc_14050585E:                          ; CODE XREF: IoAdjustStackSizeForRedirection+38↑j
                mov     rcx, rsi
                sub     bl, dil
                call    IoGetAttachedDevice
                mov     r8, rax
                movsx   eax, byte ptr [rax+4Ch]
                movzx   edx, ax
                movsx   eax, bl
                movzx   ecx, ax
                add     edx, ecx
                cmp     edx, 7Dh ; '}'
                jb      short loc_140505887
                mov     ebp, 0C000000Dh
                jmp     short loc_1405058AB
; ---------------------------------------------------------------------------

loc_140505887:                          ; CODE XREF: IoAdjustStackSizeForRedirection+5E↑j
                cmp     r8, rsi
                jz      short loc_1405058A4

loc_14050588C:                          ; CODE XREF: IoAdjustStackSizeForRedirection+7E↓j
                add     [r8+4Ch], bl
                mov     rax, [r8+138h]
                mov     r8, [rax+30h]
                cmp     r8, rsi
                jnz     short loc_14050588C
                mov     dil, [rsi+4Ch]

loc_1405058A4:                          ; CODE XREF: IoAdjustStackSizeForRedirection+6A↑j
                add     dil, bl
                mov     [rsi+4Ch], dil

loc_1405058AB:                          ; CODE XREF: IoAdjustStackSizeForRedirection+3C↑j
                                        ; IoAdjustStackSizeForRedirection+65↑j
                mov     dl, r15b
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                test    ebp, ebp
                js      short loc_1405058C4
                test    r14, r14
                jz      short loc_1405058C4
                mov     [r14], bl

loc_1405058C4:                          ; CODE XREF: IoAdjustStackSizeForRedirection+9A↑j
                                        ; IoAdjustStackSizeForRedirection+9F↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAdjustStackSizeForRedirection endp
