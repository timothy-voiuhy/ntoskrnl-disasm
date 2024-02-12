KeLowerIrql     proc near               ; CODE XREF: sub_14040ED00+300↓p
                                        ; DATA XREF: .rdata:0000000140009220↑o ...

; FUNCTION CHUNK AT 000000014041CE22 SIZE 00000066 BYTES

                push    rbx
                sub     rsp, 20h
                mov     eax, cs:dword_140CFC660
                movzx   ebx, cl
                test    eax, eax
                jnz     loc_14041CE22

loc_1402430D7:                          ; CODE XREF: KeLowerIrql+1D9D64↓j
                                        ; KeLowerIrql+1D9D70↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeLowerIrql     endp

algn_1402430E2:                         ; DATA XREF: .rdata:0000000140056328↑o
                                        ; .pdata:00000001400CBF64↑o
                align 10h
; Exported entry 1287. KeReleaseSpinLockFromDpcLevel

; =============== S U B R O U T I N E =======================================


