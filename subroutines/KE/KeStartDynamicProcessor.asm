KeStartDynamicProcessor proc near       ; DATA XREF: .pdata:000000014011DEE8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, r9
                movzx   edi, r8w
                mov     esi, edx
                mov     rcx, [rax+0B8h]
                cmp     rcx, cs:PsInitialSystemProcess
                jnz     short loc_1408BD0F0
                cmp     cs:KeDynamicPartitioningSupported, 0
                jz      short loc_1408BD0F0
                lea     rcx, dword_140C31C60
                call    ExAcquireFastMutexUnsafe
                mov     eax, cs:dword_140CFC404
                cmp     eax, cs:dword_140CFC46C
                jnb     short loc_1408BD0CD
                mov     r9d, cs:dword_140CFC404
                movzx   r8d, di
                mov     edx, esi
                mov     [rbx], r9d
                call    sub_1408BBF18
                mov     ebx, eax
                jmp     short loc_1408BD0D2
; ---------------------------------------------------------------------------

loc_1408BD0CD:                          ; CODE XREF: KeStartDynamicProcessor+52↑j
                mov     ebx, 0C0000259h

loc_1408BD0D2:                          ; CODE XREF: KeStartDynamicProcessor+6B↑j
                lea     rcx, dword_140C31C60
                call    ExReleaseFastMutexUnsafe
                test    ebx, ebx
                js      short loc_1408BD0EC
                call    sub_14050C4B8
                call    sub_1409091D4

loc_1408BD0EC:                          ; CODE XREF: KeStartDynamicProcessor+80↑j
                mov     eax, ebx
                jmp     short loc_1408BD0F5
; ---------------------------------------------------------------------------

loc_1408BD0F0:                          ; CODE XREF: KeStartDynamicProcessor+2F↑j
                                        ; KeStartDynamicProcessor+38↑j
                mov     eax, 0C0000001h

loc_1408BD0F5:                          ; CODE XREF: KeStartDynamicProcessor+8E↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeStartDynamicProcessor endp
