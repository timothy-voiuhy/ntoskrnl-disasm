IoReplaceFileObjectName proc near       ; DATA XREF: .rdata:000000014008BFB0↑o
                                        ; .pdata:0000000140108414↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140835298 SIZE 00000065 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                movzx   ebx, word ptr [rcx+5Ah]
                mov     r14, rdx
                movzx   edi, r8w
                mov     rsi, rcx
                cmp     di, bx
                ja      loc_140835298

loc_140733F10:                          ; CODE XREF: IoReplaceFileObjectName+101418↓j
                mov     rcx, [rsi+60h]
                xor     edx, edx
                movzx   r8d, bx
                mov     [rsi+58h], di
                call    memset
                mov     rcx, [rsi+60h]
                mov     r8, rdi
                mov     rdx, r14
                call    memmove
                xor     eax, eax

loc_140733F34:                          ; CODE XREF: IoReplaceFileObjectName+1013FB↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReplaceFileObjectName endp
