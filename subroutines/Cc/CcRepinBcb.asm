CcRepinBcb      proc near               ; DATA XREF: .pdata:00000001400F0EAC↑o

var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     eax, 2FDh
                mov     rbx, rcx
                cmp     [rcx], ax
                jnz     short loc_1404EAA93
                mov     rcx, [rcx+0B0h]
                add     rcx, 118h
                call    ExAcquireFastMutex
                mov     rcx, [rbx+0B0h]
                inc     dword ptr [rbx+40h]
                add     rcx, 118h
                call    KeReleaseGuardedMutex
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404EAA93:                          ; CODE XREF: CcRepinBcb+11↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     edx, 2072h
                mov     r8, 0FFFFFFFFC0000420h
                lea     ecx, [r9+34h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
CcRepinBcb      endp

algn_1404EAAB2:                         ; DATA XREF: .pdata:00000001400F0EAC↑o
                align 20h
; Exported entry  76. CcScheduleReadAhead

; =============== S U B R O U T I N E =======================================


