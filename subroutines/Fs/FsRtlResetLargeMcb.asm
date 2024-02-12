FsRtlResetLargeMcb proc near            ; DATA XREF: .pdata:00000001400F12F0↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    dl, dl
                jz      short loc_1404EF783
                and     dword ptr [rcx+0Ch], 0
                jmp     short loc_1404EF797
; ---------------------------------------------------------------------------

loc_1404EF783:                          ; CODE XREF: FsRtlResetLargeMcb+B↑j
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                mov     rcx, [rbx]
                and     dword ptr [rbx+0Ch], 0
                call    KeReleaseGuardedMutex

loc_1404EF797:                          ; CODE XREF: FsRtlResetLargeMcb+11↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlResetLargeMcb endp
