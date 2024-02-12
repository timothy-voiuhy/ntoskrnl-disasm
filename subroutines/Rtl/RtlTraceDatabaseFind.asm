RtlTraceDatabaseFind proc near          ; DATA XREF: .pdata:00000001400F813C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r9
                mov     rdi, r8
                mov     esi, edx
                mov     rbp, rcx
                call    sub_14058EF00
                mov     r9, rbx
                mov     r8, rdi
                mov     edx, esi
                mov     rcx, rbp
                call    sub_14058F124
                mov     bl, al
                test    al, al
                jz      short loc_14058EE51
                inc     qword ptr [rbp+90h]

loc_14058EE51:                          ; CODE XREF: RtlTraceDatabaseFind+38↑j
                mov     rcx, rbp
                call    sub_14058F1D8
                mov     rbp, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTraceDatabaseFind endp
