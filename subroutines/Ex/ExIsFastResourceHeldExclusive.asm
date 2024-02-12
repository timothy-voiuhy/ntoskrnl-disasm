ExIsFastResourceHeldExclusive proc near ; CODE XREF: ExIsResourceAcquiredExclusiveLite+15696F↓p
                                        ; DATA XREF: .rdata:0000000140099F1C↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049DAD4 SIZE 000000FF BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                movzx   eax, word ptr [rcx+1Ah]
                mov     r11, rcx
                test    al, 1
                jz      loc_14049DAD4
                mov     rcx, cr8
                mov     ebp, 2
                cmp     cl, bpl
                ja      loc_14049DAF1
                test    al, al
                js      loc_14049DB0D
                xor     r10d, r10d

loc_140390D50:                          ; CODE XREF: ExIsFastResourceHeldExclusive+10CEBE↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     al, r10b
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExIsFastResourceHeldExclusive endp
