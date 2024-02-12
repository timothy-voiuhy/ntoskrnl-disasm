PsGetJobServerSilo proc near            ; CODE XREF: sub_140603630+EBE↓p
                                        ; sub_140603630+1F6E49↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014041E97C SIZE 0000000E BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                test    rcx, rcx
                jz      loc_14041E97C
                call    PsGetEffectiveServerSilo
                mov     [rbx], rax
                xor     eax, eax

loc_14020183C:                          ; CODE XREF: PsGetJobServerSilo+21D165↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetJobServerSilo endp
