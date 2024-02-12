IoDetachDevice  proc near               ; CODE XREF: sub_1409E7310+166↓p
                                        ; DATA XREF: .rdata:000000014006D8EC↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404630D4 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 0Ah
                call    KeAcquireQueuedSpinLock
                mov     edx, cs:dword_140C2A6E0
                mov     dil, al
                test    dl, 10h
                jnz     loc_1404630D4

loc_1402F0799:                          ; CODE XREF: IoDetachDevice+172972↓j
                mov     rcx, [rbx+18h]
                xor     r8d, r8d
                mov     rdx, [rcx+138h]
                mov     [rdx+30h], r8
                mov     rax, [rbx+138h]
                mov     [rbx+18h], r8
                mov     ecx, [rax+20h]
                test    cl, 7
                jz      short loc_1402F07DD
                cmp     [rbx+4], r8d
                jnz     short loc_1402F07DD
                mov     r8b, dil
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402F0A40

loc_1402F07D1:                          ; CODE XREF: IoDetachDevice+7A↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402F07DD:                          ; CODE XREF: IoDetachDevice+4C↑j
                                        ; IoDetachDevice+52↑j
                mov     dl, dil
                mov     ecx, 0Ah
                call    KeReleaseQueuedSpinLock
                jmp     short loc_1402F07D1
IoDetachDevice  endp

; ---------------------------------------------------------------------------
algn_1402F07EC:                         ; DATA XREF: .rdata:000000014006D8EC↑o
                                        ; .pdata:00000001400D2F90↑o
                align 20h
; Exported entry 802. IoDeleteDevice

; =============== S U B R O U T I N E =======================================


