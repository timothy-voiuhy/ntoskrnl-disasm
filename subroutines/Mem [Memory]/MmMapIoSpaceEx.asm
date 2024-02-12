MmMapIoSpaceEx  proc near               ; CODE XREF: sub_1402E68EC+FD↑p
                                        ; MmMapVideoDisplay:loc_1402E6DEB↑p ...

; FUNCTION CHUNK AT 000000014045FC9A SIZE 0000000F BYTES

                sub     rsp, 28h
                mov     r10, rcx
                mov     r11, rdx
                mov     ecx, r8d
                call    sub_1402320B0
                test    al, 2
                jnz     short loc_1402E724D

loc_1402E7236:                          ; CODE XREF: MmMapIoSpaceEx+35↓j
                                        ; MmMapIoSpaceEx+178A7C↓j
                xor     r9d, r9d
                mov     r8d, eax
                mov     rdx, r11
                mov     rcx, r10
                call    sub_1402E7BF4

loc_1402E7247:                          ; CODE XREF: MmMapIoSpaceEx+178A84↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402E724D:                          ; CODE XREF: MmMapIoSpaceEx+14↑j
                mov     ecx, eax
                and     ecx, 0FFFFFFF8h
                cmp     ecx, 18h
                jnz     short loc_1402E7236
                jmp     loc_14045FC9A
MmMapIoSpaceEx  endp

; ---------------------------------------------------------------------------
byte_1402E725C  db 14h dup(0CCh)        ; DATA XREF: .rdata:000000014006BC54↑o
                                        ; .pdata:00000001400D28E8↑o
; Exported entry 1401. MmAllocateContiguousNodeMemory

; =============== S U B R O U T I N E =======================================


