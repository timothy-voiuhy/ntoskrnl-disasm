HalRequestClockInterrupt proc near      ; CODE XREF: sub_1403506D4+5C↑p
                                        ; sub_1404C2980+97↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140483FC2 SIZE 0000001F BYTES

                push    rbx
                sub     rsp, 30h
                movsxd  rbx, ecx
                mov     r8d, 0D2h
                mov     ecx, ebx
                call    HalRequestIpiSpecifyVector
                test    eax, eax
                js      loc_140483FC2
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalRequestClockInterrupt endp
