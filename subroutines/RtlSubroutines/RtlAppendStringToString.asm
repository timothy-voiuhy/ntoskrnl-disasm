RtlAppendStringToString proc near       ; CODE XREF: sub_14079E9F0+609↓p
                                        ; sub_14079E9F0+68B↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   edi, word ptr [rdx]
                mov     rbx, rcx
                test    di, di
                jz      short loc_14076C818
                movzx   ecx, word ptr [rcx]
                movzx   eax, word ptr [rbx+2]
                lea     r8d, [rcx+rdi]
                cmp     r8d, eax
                ja      short loc_14076C826
                add     rcx, [rbx+8]
                mov     r8d, edi
                mov     rdx, [rdx+8]
                call    memmove
                add     [rbx], di

loc_14076C818:                          ; CODE XREF: RtlAppendStringToString+13↑j
                xor     eax, eax

loc_14076C81A:                          ; CODE XREF: RtlAppendStringToString+4B↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14076C826:                          ; CODE XREF: RtlAppendStringToString+23↑j
                mov     eax, 0C0000023h
                jmp     short loc_14076C81A
RtlAppendStringToString endp
