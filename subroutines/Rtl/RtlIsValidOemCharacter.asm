RtlIsValidOemCharacter proc near        ; CODE XREF: sub_1406EEED8+135F4C↑p
                                        ; DATA XREF: .pdata:00000001401221D8↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     cl, 1
                call    sub_140630C90
                movzx   ecx, word ptr [rbx]
                cmp     al, 1
                jnz     short loc_140917CDD
                cmp     ecx, 7Fh
                ja      loc_140917D60
                call    sub_14021DA60
                mov     [rbx], ax
                jmp     loc_140917D68
; ---------------------------------------------------------------------------

loc_140917CDD:                          ; CODE XREF: RtlIsValidOemCharacter+15↑j
                cmp     cs:NlsMbOemCodePageTag, 0
                jnz     short loc_140917D0D
                mov     rax, cs:qword_140D2D118
                mov     r9, cs:qword_140D2D148
                movzx   ecx, byte ptr [rcx+r9]
                movzx   ecx, word ptr [rax+rcx*2]
                call    sub_14021DA60
                movzx   r10d, ax
                movsx   eax, byte ptr [r10+r9]
                jmp     short loc_140917D57
; ---------------------------------------------------------------------------

loc_140917D0D:                          ; CODE XREF: RtlIsValidOemCharacter+34↑j
                mov     r9, cs:qword_140D2D0C0
                lea     rdx, word_140D2FC20
                movzx   ecx, word ptr [r9+rcx*2]
                mov     eax, ecx
                movzx   ecx, cl
                shr     rax, 8
                movzx   edx, word ptr [rdx+rax*2]
                test    dx, dx
                jz      short loc_140917D3E
                mov     rax, cs:qword_140D2D208
                add     rcx, rdx
                jmp     short loc_140917D45
; ---------------------------------------------------------------------------

loc_140917D3E:                          ; CODE XREF: RtlIsValidOemCharacter+80↑j
                mov     rax, cs:qword_140D2D118

loc_140917D45:                          ; CODE XREF: RtlIsValidOemCharacter+8C↑j
                movzx   ecx, word ptr [rax+rcx*2]
                call    sub_14021DA60
                movzx   r10d, ax
                movzx   eax, word ptr [r9+r10*2]

loc_140917D57:                          ; CODE XREF: RtlIsValidOemCharacter+5B↑j
                cmp     ax, cs:word_140D2D048
                jnz     short loc_140917D64

loc_140917D60:                          ; CODE XREF: RtlIsValidOemCharacter+1A↑j
                xor     al, al
                jmp     short loc_140917D6A
; ---------------------------------------------------------------------------

loc_140917D64:                          ; CODE XREF: RtlIsValidOemCharacter+AE↑j
                mov     [rbx], r10w

loc_140917D68:                          ; CODE XREF: RtlIsValidOemCharacter+28↑j
                mov     al, 1

loc_140917D6A:                          ; CODE XREF: RtlIsValidOemCharacter+B2↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsValidOemCharacter endp
