ExAllocateAutoExpandPushLock proc near  ; DATA XREF: .pdata:00000001400DC638↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                mov     edx, 10h
                and     ebx, 1
                mov     r8d, 6C706541h
                mov     eax, ebx
                neg     eax
                sbb     ecx, ecx
                and     ecx, 1FFh
                inc     ecx
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_14039244B
                and     qword ptr [rax+8], 0
                test    ebx, ebx
                jz      short loc_140392452

loc_140392447:                          ; CODE XREF: ExAllocateAutoExpandPushLock+46↓j
                and     qword ptr [rax], 0

loc_14039244B:                          ; CODE XREF: ExAllocateAutoExpandPushLock+2C↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140392452:                          ; CODE XREF: ExAllocateAutoExpandPushLock+35↑j
                or      dword ptr [rax+8], 4
                jmp     short loc_140392447
ExAllocateAutoExpandPushLock endp
