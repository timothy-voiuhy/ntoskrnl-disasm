KeFreeCalloutStack proc near            ; DATA XREF: .pdata:000000014010B57C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     rsi, rcx
                cmp     [rcx+4], dil
                mov     ebp, edi
                setnz   bpl
                cmp     [rcx+5], dil
                jbe     short loc_14077B9B1

loc_14077B989:                          ; CODE XREF: KeFreeCalloutStack+4F↓j
                mov     rcx, [rsi+rdi*8+40h]
                mov     edx, ebp
                call    sub_14027D2A0
                mov     rax, cs:MmBadPointer
                add     rax, 1000h
                mov     [rsi+rdi*8+40h], rax
                inc     edi
                movzx   eax, byte ptr [rsi+5]
                cmp     edi, eax
                jb      short loc_14077B989

loc_14077B9B1:                          ; CODE XREF: KeFreeCalloutStack+27↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeFreeCalloutStack endp
