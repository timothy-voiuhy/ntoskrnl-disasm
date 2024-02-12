RtlSetBits      proc near               ; CODE XREF: RtlFindClearBitsAndSet+133↑p
                                        ; sub_1402C79F0+415↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                test    r8d, r8d
                jz      short locret_14020BAC0
                push    rsi
                sub     rsp, 20h

loc_14020BA7A:                          ; DATA XREF: .rdata:0000000140048F8C↑o
                                        ; .rdata:0000000140048F9C↑o ...
                mov     [rsp+28h+arg_0], rbx
                mov     ebx, edx
                and     edx, 7
                shr     rbx, 3
                add     rbx, [rcx+8]
                mov     esi, r8d
                mov     [rsp+28h+arg_8], rbp
                lea     rbp, cs:140000000h
                lea     ecx, [rdx+rsi]
                cmp     ecx, 8
                ja      short loc_14020BAC2
                movzx   eax, byte ptr [rsi+rbp+1DAE0h]
                mov     ecx, edx
                shl     al, cl

loc_14020BAAF:                          ; CODE XREF: RtlSetBits+9D↓j
                or      [rbx], al

loc_14020BAB1:                          ; CODE XREF: RtlSetBits+93↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rsi

locret_14020BAC0:                       ; CODE XREF: RtlSetBits+3↑j
                retn
; ---------------------------------------------------------------------------
algn_14020BAC1:                         ; DATA XREF: .pdata:00000001400C9B04↑o
                                        ; .pdata:00000001400C9B10↑o
                align 2

loc_14020BAC2:                          ; CODE XREF: RtlSetBits+31↑j
                                        ; DATA XREF: .rdata:0000000140048FC8↑o ...
                test    edx, edx
                jz      short loc_14020BAD6
                movzx   eax, byte ptr [rdx+rbp+1A870h]
                lea     esi, [rcx-8]
                or      [rbx], al
                inc     rbx

loc_14020BAD6:                          ; CODE XREF: RtlSetBits+54↑j
                cmp     esi, 8
                jbe     short loc_14020BB01

loc_14020BADB:                          ; DATA XREF: .rdata:0000000140048FC8↑o
                                        ; .rdata:0000000140048FD8↑o ...
                mov     [rsp+28h+arg_10], rdi
                mov     edx, 0FFh
                mov     edi, esi
                mov     rcx, rbx
                shr     rdi, 3
                mov     r8, rdi
                call    memset
                add     rbx, rdi
                mov     rdi, [rsp+28h+arg_10]
                and     esi, 7

loc_14020BB01:                          ; CODE XREF: RtlSetBits+69↑j
                                        ; DATA XREF: .pdata:00000001400C9B28↑o ...
                test    esi, esi
                jz      short loc_14020BAB1
                movzx   eax, byte ptr [rsi+rbp+1DAE0h]
                jmp     short loc_14020BAAF
RtlSetBits      endp

; ---------------------------------------------------------------------------
algn_14020BB0F:                         ; DATA XREF: .pdata:00000001400C9B34↑o
                align 20h
; Exported entry 2131. RtlFindSetBits

; =============== S U B R O U T I N E =======================================


