RtlCaptureStackBackTrace proc near      ; CODE XREF: sub_140248280+169↑p
                                        ; sub_14052D3BC+8D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044CE00 SIZE 00000026 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rsi, r9
                mov     rbp, r8
                mov     edi, edx
                mov     ebx, ecx
                cmp     edx, 0FFFFh
                ja      short loc_1402ABB6E

loc_1402ABB26:                          ; CODE XREF: RtlCaptureStackBackTrace+73↓j
                cmp     ebx, 0FEh
                ja      short loc_1402ABB75
                inc     ebx
                mov     rcx, rbp
                mov     r8d, ebx
                shl     r8d, 8
                lea     edx, [rbx+rdi]
                call    RtlWalkFrameChain
                mov     edx, eax
                cmp     eax, ebx
                jbe     short loc_1402ABB75
                test    rsi, rsi
                jnz     loc_14044CE00
                mov     ecx, eax
                sub     ecx, ebx

loc_1402ABB55:                          ; CODE XREF: RtlCaptureStackBackTrace+1A1321↓j
                movzx   eax, cx

loc_1402ABB58:                          ; CODE XREF: RtlCaptureStackBackTrace+7C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402ABB6E:                          ; CODE XREF: RtlCaptureStackBackTrace+24↑j
                mov     edi, 0FFFFh
                jmp     short loc_1402ABB26
; ---------------------------------------------------------------------------

loc_1402ABB75:                          ; CODE XREF: RtlCaptureStackBackTrace+2C↑j
                                        ; RtlCaptureStackBackTrace+46↑j
                xor     r8d, r8d
                movzx   eax, r8w
                jmp     short loc_1402ABB58
RtlCaptureStackBackTrace endp
