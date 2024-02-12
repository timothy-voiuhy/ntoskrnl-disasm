RtlCopySid      proc near               ; CODE XREF: sub_14030D258+6F7↑p
                                        ; SeConvertStringSidToSid+EDFBC↑p ...
                sub     rsp, 28h
                movzx   eax, byte ptr [r8+1]
                mov     r9, r8
                mov     r10, rdx
                lea     eax, ds:8[rax*4]
                cmp     eax, ecx
                ja      short loc_14061C440
                mov     r8d, eax
                mov     rdx, r9
                mov     rcx, r10
                call    memmove
                xor     eax, eax

loc_14061C43A:                          ; CODE XREF: RtlCopySid+35↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14061C440:                          ; CODE XREF: RtlCopySid+18↑j
                mov     eax, 0C0000023h
                jmp     short loc_14061C43A
RtlCopySid      endp

; ---------------------------------------------------------------------------
algn_14061C447:                         ; DATA XREF: .pdata:00000001400FD860↑o
                align 10h
; Exported entry 1916. PsReferencePrimaryToken

; =============== S U B R O U T I N E =======================================


