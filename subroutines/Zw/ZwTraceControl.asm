ZwTraceControl  proc near               ; CODE XREF: EtwWriteStartScenario+12B↓p
                                        ; DATA XREF: .pdata:00000001400E3220↑o
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 1C5h
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwTraceControl  endp

; ---------------------------------------------------------------------------
algn_1403FD49F:                         ; DATA XREF: .pdata:00000001400E3220↑o
                align 20h
; Exported entry 2937. ZwTranslateFilePath

; =============== S U B R O U T I N E =======================================


