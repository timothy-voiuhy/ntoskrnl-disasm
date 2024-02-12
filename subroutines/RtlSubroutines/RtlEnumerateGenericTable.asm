RtlEnumerateGenericTable proc near      ; DATA XREF: .rdata:0000000140095B0C↑o
                                        ; .pdata:00000001400DB6E4↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049732E SIZE 00000048 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx]
                mov     rdi, rcx
                test    rbx, rbx
                jnz     loc_14049732E
                xor     eax, eax

loc_140381EFB:                          ; CODE XREF: RtlEnumerateGenericTable+115491↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlEnumerateGenericTable endp
