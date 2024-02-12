IoGetSfioStreamIdentifier proc near     ; DATA XREF: .pdata:00000001400F2778↑o

var_18          = byte ptr -18h
arg_0           = qword ptr  8

                sub     rsp, 38h
                and     [rsp+38h+arg_0], 0
                test    rcx, rcx
                jz      short loc_140505D4F
                test    rdx, rdx
                jz      short loc_140505D4F
                mov     r8, rdx
                mov     [rsp+38h+var_18], 0
                xor     edx, edx
                lea     r9, [rsp+38h+arg_0]
                call    sub_140506934
                mov     rax, [rsp+38h+arg_0]
                jmp     short loc_140505D51
; ---------------------------------------------------------------------------

loc_140505D4F:                          ; CODE XREF: IoGetSfioStreamIdentifier+D↑j
                                        ; IoGetSfioStreamIdentifier+12↑j
                xor     eax, eax

loc_140505D51:                          ; CODE XREF: IoGetSfioStreamIdentifier+2D↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetSfioStreamIdentifier endp
