PsEstablishWin32Callouts proc near      ; DATA XREF: .rdata:000000014009F414↑o
                                        ; .pdata:000000014010CA40↑o

; FUNCTION CHUNK AT 0000000140853E2A SIZE 00000010 BYTES

                push    rbx
                sub     rsp, 20h
                xor     edx, edx
                call    sub_140799480
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140798FF6
                xor     r8d, r8d
                lea     rcx, unk_140C1DE28
                mov     rdx, rax
                call    sub_1403AF5DC
                test    al, al
                jz      loc_140853E2A
                mov     cs:byte_140C5430C, 1

loc_140798FF6:                          ; CODE XREF: PsEstablishWin32Callouts+13↑j
                                        ; PsEstablishWin32Callouts+BAE75↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsEstablishWin32Callouts endp
