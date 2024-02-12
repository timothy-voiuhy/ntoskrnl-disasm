IoGetStackLimits proc near              ; CODE XREF: sub_14024F4C0+8C5↓p
                                        ; sub_1405B1058+150↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140434784 SIZE 0000000D BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_14024AED0
                test    al, al
                jz      loc_140434784

loc_14024AEBD:                          ; CODE XREF: IoGetStackLimits+1E98EC↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetStackLimits endp
