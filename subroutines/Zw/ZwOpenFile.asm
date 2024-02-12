ZwOpenFile      proc near               ; CODE XREF: sub_1404EE31C+E1↓p
                                        ; sub_1405C3FE0+B1↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 33h ; '3'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwOpenFile      endp

; ---------------------------------------------------------------------------
algn_1403FA25F:                         ; DATA XREF: .pdata:00000001400E1F48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403FA260   proc near               ; CODE XREF: sub_1409C7300+CA↓p
                                        ; DATA XREF: .pdata:00000001400E1F54↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 34h ; '4'
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
sub_1403FA260   endp

; ---------------------------------------------------------------------------
algn_1403FA27F:                         ; DATA XREF: .pdata:00000001400E1F54↑o
                align 20h
; Exported entry 2842. ZwQueryDirectoryFile

; =============== S U B R O U T I N E =======================================


