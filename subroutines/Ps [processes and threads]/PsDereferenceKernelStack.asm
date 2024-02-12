PsDereferenceKernelStack proc near      ; DATA XREF: .rdata:00000001400898D0↑o
                                        ; .pdata:0000000140107484↑o

; FUNCTION CHUNK AT 000000014082FBE4 SIZE 00000019 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                or      eax, 0FFFFFFFFh
                lock xadd [rcx+55Ch], eax
                cmp     eax, 1
                jz      loc_14082FBE4

loc_140721D3D:                          ; CODE XREF: PsDereferenceKernelStack+10DED8↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsDereferenceKernelStack endp
