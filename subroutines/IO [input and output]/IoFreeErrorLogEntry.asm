IoFreeErrorLogEntry proc near           ; DATA XREF: .pdata:00000001400F2748↑o
                push    rbx
                sub     rsp, 20h
                lea     rbx, [rcx-30h]
                mov     rcx, [rbx+18h]
                test    rcx, rcx
                jz      short loc_140505B6D
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_140505B6D:                          ; CODE XREF: IoFreeErrorLogEntry+11↑j
                mov     rcx, [rbx+20h]
                test    rcx, rcx
                jz      short loc_140505B80
                mov     edx, 746C6644h
                call    ObfDereferenceObjectWithTag

loc_140505B80:                          ; CODE XREF: IoFreeErrorLogEntry+24↑j
                movzx   eax, word ptr [rbx+2]
                neg     eax
                lock xadd cs:dword_140C45880, eax
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeErrorLogEntry endp
