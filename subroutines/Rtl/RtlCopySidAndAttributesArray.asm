RtlCopySidAndAttributesArray proc near  ; CODE XREF: sub_14030D258+651↑p
                                        ; sub_14030D258+682↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, [rsp+38h+arg_20]
                xor     r15d, r15d
                mov     esi, r8d
                mov     r14, rdx
                mov     r12d, ecx
                test    ecx, ecx
                jz      short loc_1406B707A
                lea     rdi, [r9+8]
                sub     r14, r9

loc_1406B702A:                          ; CODE XREF: RtlCopySidAndAttributesArray+88↓j
                mov     rax, [r14+rdi-8]
                movzx   ecx, byte ptr [rax+1]
                lea     ebp, ds:8[rcx*4]
                cmp     ebp, esi
                ja      short loc_1406B70AB
                mov     [rdi-8], rbx
                sub     esi, ebp
                mov     eax, [r14+rdi]
                mov     [rdi], eax
                mov     rdx, [r14+rdi-8]
                movzx   eax, byte ptr [rdx+1]
                lea     eax, ds:8[rax*4]
                cmp     eax, ebp
                ja      short loc_1406B7069
                mov     r8d, eax
                mov     rcx, rbx
                call    memmove

loc_1406B7069:                          ; CODE XREF: RtlCopySidAndAttributesArray+6C↑j
                mov     eax, ebp
                inc     r15d
                add     rbx, rax
                add     rdi, 10h
                cmp     r15d, r12d
                jb      short loc_1406B702A

loc_1406B707A:                          ; CODE XREF: RtlCopySidAndAttributesArray+31↑j
                mov     rax, [rsp+38h+arg_28]
                mov     [rax], rbx
                mov     rax, [rsp+38h+arg_30]
                mov     [rax], esi
                xor     eax, eax

loc_1406B708B:                          ; CODE XREF: RtlCopySidAndAttributesArray+C0↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406B70AB:                          ; CODE XREF: RtlCopySidAndAttributesArray+4C↑j
                mov     eax, 0C0000023h
                jmp     short loc_1406B708B
RtlCopySidAndAttributesArray endp
