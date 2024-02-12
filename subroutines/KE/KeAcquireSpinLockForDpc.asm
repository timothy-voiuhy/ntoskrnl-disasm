KeAcquireSpinLockForDpc proc near       ; DATA XREF: .pdata:00000001400F3744↑o
                push    rbx
                sub     rsp, 20h
                mov     rax, gs:20h
                mov     edx, [rax+312Ch]
                bt      edx, 10h
                jnb     short loc_140516824
                call    KeAcquireSpinLockRaiseToDpc
                mov     bl, al
                jmp     short loc_14051682B
; ---------------------------------------------------------------------------

loc_140516824:                          ; CODE XREF: KeAcquireSpinLockForDpc+19↑j
                mov     bl, 2
                call    KeAcquireSpinLockAtDpcLevel

loc_14051682B:                          ; CODE XREF: KeAcquireSpinLockForDpc+22↑j
                mov     al, bl
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireSpinLockForDpc endp
