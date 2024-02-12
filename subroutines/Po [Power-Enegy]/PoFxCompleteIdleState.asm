PoFxCompleteIdleState proc near         ; DATA XREF: .rdata:000000014009E69C↑o
                                        ; .pdata:00000001400DD9F4↑o

var_48          = byte ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A73BA SIZE 00000050 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 60h
                mov     edi, edx
                mov     rsi, rcx
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                lea     r8d, [rdx+40h]
                call    memset
                mov     rax, [rsi+340h]
                mov     rbx, [rax+rdi*8]
                or      eax, 0FFFFFFFFh
                lock xadd [rbx+8Ch], eax
                cmp     eax, 1
                jz      loc_1404A73BA

loc_1403A66D3:                          ; CODE XREF: PoFxCompleteIdleState+100D62↓j
                                        ; PoFxCompleteIdleState+100D75↓j
                mov     rbx, [rsp+68h+arg_0]
                mov     rsi, [rsp+68h+arg_8]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoFxCompleteIdleState endp
