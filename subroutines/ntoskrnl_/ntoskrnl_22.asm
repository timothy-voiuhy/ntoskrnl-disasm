ntoskrnl_22     proc near               ; CODE XREF: sub_14094F950+192↓p
                                        ; DATA XREF: .pdata:0000000140107700↑o
                xor     eax, eax
                cmp     cs:InitSafeBootMode, eax
                jnz     short loc_140722EC4
                cmp     cs:byte_140C4C008, al
                jnz     short loc_140722EC4
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140722EC4:                          ; CODE XREF: ntoskrnl_22+8↑j
                                        ; ntoskrnl_22+10↑j
                mov     al, 1
                retn
ntoskrnl_22     endp

; ---------------------------------------------------------------------------
                align 8
algn_140722EC8:                         ; DATA XREF: .pdata:0000000140107700↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140722ED0   proc near               ; CODE XREF: sub_140364590+9↑p
                                        ; DATA XREF: .pdata:000000014010770C↑o
                sub     rsp, 28h
                call    sub_140309A70
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140722ED0   endp

byte_140722EDF  db 11h dup(0CCh)        ; DATA XREF: .pdata:000000014010770C↑o
; Exported entry  17.

; =============== S U B R O U T I N E =======================================


