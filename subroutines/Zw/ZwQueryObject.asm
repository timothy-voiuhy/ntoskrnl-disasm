ZwQueryObject   proc near               ; CODE XREF: sub_14066B4B4+91↓p
                                        ; sub_14066D50C+20A↓p ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 10h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwQueryObject   endp

; ---------------------------------------------------------------------------
algn_1403F9DFF:                         ; DATA XREF: .pdata:00000001400E1DA4↑o
                align 20h
; Exported entry 2850. ZwQueryInformationFile

; =============== S U B R O U T I N E =======================================


