RtlInitializeCorrelationVector proc near
                                        ; DATA XREF: .pdata:000000014012219C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     eax, [rdx-1]
                mov     rsi, r8
                mov     edi, edx
                mov     rbx, rcx
                cmp     al, 1
                ja      short loc_140917A34
                test    r8, r8
                jz      short loc_140917A34
                inc     rcx
                xor     edx, edx
                mov     r8d, 81h
                call    memset
                lea     r8, [rbx+1]
                mov     [rbx], dil
                mov     rcx, rsi
                call    sub_140917B38
                test    eax, eax
                js      short loc_140917A39
                cmp     dil, 1
                jnz     short loc_140917A28
                mov     word ptr [rbx+11h], 302Eh
                mov     byte ptr [rbx+13h], 0
                jmp     short loc_140917A39
; ---------------------------------------------------------------------------

loc_140917A28:                          ; CODE XREF: RtlInitializeCorrelationVector+4A↑j
                mov     word ptr [rbx+17h], 302Eh
                mov     byte ptr [rbx+19h], 0
                jmp     short loc_140917A39
; ---------------------------------------------------------------------------

loc_140917A34:                          ; CODE XREF: RtlInitializeCorrelationVector+1C↑j
                                        ; RtlInitializeCorrelationVector+21↑j
                mov     eax, 0C000000Dh

loc_140917A39:                          ; CODE XREF: RtlInitializeCorrelationVector+44↑j
                                        ; RtlInitializeCorrelationVector+56↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitializeCorrelationVector endp
