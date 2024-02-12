KeReleaseMutex  proc near               ; CODE XREF: sub_14030F6E4+6F↓p
                                        ; sub_14035DC48+2AB↓p ...
                sub     rsp, 28h
                xor     r8d, r8d
                movzx   r9d, dl
                lea     edx, [r8+1]
                call    KeReleaseMutant
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeReleaseMutex  endp

algn_1402F205A:                         ; DATA XREF: .pdata:00000001400D3170↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402F2060   proc near               ; CODE XREF: sub_14069FCA0+15↓p
                                        ; DATA XREF: .pdata:00000001400D317C↑o
                mov     eax, [rcx+80h]
                imul    rcx, rax, 1040h
                mov     eax, 0FFFFFFFFh
                cmp     rcx, rax
                cmovbe  eax, ecx
                retn
sub_1402F2060   endp

; ---------------------------------------------------------------------------
                align 2
algn_1402F207A:                         ; DATA XREF: .pdata:00000001400D317C↑o
                align 20h
; Exported entry 964. IoReportTargetDeviceChangeAsynchronous

; =============== S U B R O U T I N E =======================================


