KiCheckForKernelApcDelivery proc near   ; CODE XREF: sub_140200C20+3AC↑p
                                        ; sub_140200C20:loc_14020100B↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D9C6 SIZE 00000045 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rax, cr8
                xor     edi, edi
                lea     ebx, [rdi+1]
                test    al, al
                jnz     short loc_1402C8119
                mov     rax, cr8
                mov     cr8, rbx
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1402C8140
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041D9C6

loc_1402C8109:                          ; CODE XREF: KiCheckForKernelApcDelivery+1558F8↓j
                                        ; KiCheckForKernelApcDelivery+155906↓j ...
                mov     cr8, rdi

loc_1402C810D:                          ; CODE XREF: KiCheckForKernelApcDelivery+5F↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402C8119:                          ; CODE XREF: KiCheckForKernelApcDelivery+15↑j
                mov     rax, gs:188h
                mov     cl, bl
                mov     [rax+0C1h], bl
                call    HalRequestSoftwareInterrupt
                jmp     short loc_1402C810D
KiCheckForKernelApcDelivery endp
