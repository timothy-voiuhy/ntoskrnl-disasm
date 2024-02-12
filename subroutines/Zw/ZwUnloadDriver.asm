ZwUnloadDriver  proc near               ; CODE XREF: sub_140687200+1367↓p
                                        ; sub_140793AB8+A7C0D↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1C8h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwUnloadDriver  endp

; ---------------------------------------------------------------------------
algn_1403FD4FF:                         ; DATA XREF: .pdata:00000001400E3244↑o
                align 20h
; Exported entry 2939. ZwUnloadKey

; =============== S U B R O U T I N E =======================================


