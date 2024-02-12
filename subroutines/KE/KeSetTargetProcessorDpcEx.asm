KeSetTargetProcessorDpcEx proc near     ; CODE XREF: sub_140377010+11C61F↓p
                                        ; sub_1403C5700+EB3A0↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, rdx
                call    KeGetProcessorIndexFromNumber
                cmp     eax, 0FFFFFFFFh
                jz      short loc_140362054
                mov     rdx, [rbx+38h]
                test    rdx, rdx
                jnz     short loc_14036204B
                mov     ecx, 500h
                add     ax, cx
                mov     [rbx+2], ax

loc_14036204B:                          ; CODE XREF: KeSetTargetProcessorDpcEx+1D↑j
                xor     eax, eax

loc_14036204D:                          ; CODE XREF: KeSetTargetProcessorDpcEx+39↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140362054:                          ; CODE XREF: KeSetTargetProcessorDpcEx+14↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14036204D
KeSetTargetProcessorDpcEx endp
