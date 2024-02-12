PsGetThreadExitStatus proc near         ; CODE XREF: NtQueryInformationThread+76A↑p
                                        ; DATA XREF: .rdata:00000001400885E8↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014082DECC SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+4F8h]
                mov     rbx, rcx
                mov     rcx, rdi
                call    sub_14024C840
                test    al, al
                jnz     loc_14082DECC
                mov     eax, [rbx+548h]

loc_14071C39A:                          ; CODE XREF: PsGetThreadExitStatus+111B69↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetThreadExitStatus endp
