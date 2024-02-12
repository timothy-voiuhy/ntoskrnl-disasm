RtlTraceDatabaseValidate proc near      ; DATA XREF: .pdata:00000001400F8160↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_14058EF00
                mov     ecx, [rbx+70h]
                test    ecx, ecx
                jz      short loc_14058EEE6
                mov     rdx, [rbx+78h]
                mov     r8d, ecx

loc_14058EEDC:                          ; CODE XREF: RtlTraceDatabaseValidate+24↓j
                lea     rdx, [rdx+8]
                sub     r8, 1
                jnz     short loc_14058EEDC

loc_14058EEE6:                          ; CODE XREF: RtlTraceDatabaseValidate+13↑j
                mov     rcx, rbx
                call    sub_14058F1D8
                mov     al, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTraceDatabaseValidate endp
