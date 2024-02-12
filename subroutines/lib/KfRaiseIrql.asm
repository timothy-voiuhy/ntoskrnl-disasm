KfRaiseIrql     proc near               ; CODE XREF: sub_14040ED00+2DC↓p
                                        ; DATA XREF: .rdata:0000000140009218↑o ...

; FUNCTION CHUNK AT 000000014041CD26 SIZE 00000060 BYTES

                movzx   r11d, cl
                mov     rax, cr8
                mov     cr8, r11
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_14041CD26

locret_140242F3A:                       ; CODE XREF: KfRaiseIrql+1D9E09↓j
                                        ; KfRaiseIrql+1D9E11↓j ...
                retn
KfRaiseIrql     endp

; ---------------------------------------------------------------------------
                align 4
byte_140242F3C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400CBED4↑o
; Exported entry 1167. KeGetCurrentIrql
; [00000005 BYTES: COLLAPSED FUNCTION KeGetCurrentIrql. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 2
algn_140242F56:                         ; DATA XREF: .pdata:00000001400CBEE0↑o
                align 20h
; Exported entry 1102. KeAcquireSpinLockRaiseToDpc

; =============== S U B R O U T I N E =======================================


