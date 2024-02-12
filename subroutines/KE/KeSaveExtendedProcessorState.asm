KeSaveExtendedProcessorState proc near  ; CODE XREF: sub_1403EBD44+30↓p
                                        ; DATA XREF: .rdata:000000014007E73C↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014047A786 SIZE 0000001C BYTES

                sub     rsp, 38h
                mov     r8, cs:qword_140CFC458
                and     r8d, 800000h
                jz      short loc_14033A2FD
                mov     rax, 0FFFFF780000003D8h
                mov     rax, [rax]
                not     rax
                test    rcx, rax

loc_14033A2E7:                          ; CODE XREF: KeSaveExtendedProcessorState+44↓j
                setnz   al
                test    al, al
                jnz     loc_14047A786
                call    sub_14033A30C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033A2FD:                          ; CODE XREF: KeSaveExtendedProcessorState+12↑j
                test    rcx, 0FFFFFFFFFFFFFFFCh
                jmp     short loc_14033A2E7
KeSaveExtendedProcessorState endp
