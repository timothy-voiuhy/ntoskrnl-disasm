RtlTestBitEx    proc near               ; DATA XREF: .pdata:00000001400DA418↑o
                mov     rax, [rcx+8]
                bt      [rax], rdx
                setb    al
                retn
RtlTestBitEx    endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036D43D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DA418↑o

; =============== S U B R O U T I N E =======================================


sub_14036D450   proc near               ; DATA XREF: .rdata:000000014008BFCC↑o
                                        ; .pdata:00000001400DA424↑o ...

; FUNCTION CHUNK AT 000000014048E6FC SIZE 0000001D BYTES

                push    rbx
                sub     rsp, 20h
                mov     eax, [rdx+30h]
                mov     rbx, r8
                mov     [r8+20h], eax
                test    eax, eax
                js      loc_14048E6FC

loc_14036D468:                          ; CODE XREF: sub_14036D450+1212B7↓j
                                        ; sub_14036D450+1212C4↓j
                mov     rcx, rdx
                call    IoFreeIrp
                lea     rcx, [rbx+8]
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                mov     eax, 0C0000016h
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14036D450   endp

algn_14036D48A:                         ; DATA XREF: .rdata:000000014008BFCC↑o
                                        ; .pdata:00000001400DA424↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14036D490   proc near               ; CODE XREF: sub_140760148+6F↓p
                                        ; DATA XREF: .pdata:00000001400DA430↑o
                cmp     cs:qword_140C4A2A8, 0
                setnz   al
                retn
sub_14036D490   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14036D49D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400DA430↑o
; Exported entry 1488. MmProtectDriverSection
; Exported entry 1500. MmSetBankedSection
; Exported entry 1699. PoCancelDeviceNotify
; Exported entry 1753. PoRegisterDeviceNotify

; =============== S U B R O U T I N E =======================================


