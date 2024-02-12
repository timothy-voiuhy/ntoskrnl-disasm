RtlSidHashLookup proc near              ; CODE XREF: sub_14021C53C+42↑p
                                        ; sub_14021C610+48↑p
                                        ; DATA XREF: ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042805A SIZE 00000040 BYTES

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      short loc_14021C746
                test    rdx, rdx
                jz      short loc_14021C746
                movzx   eax, byte ptr [rdx+1]
                mov     r14b, 0
                movzx   ebp, word ptr [rdx]
                lea     r12d, ds:8[rax*4]
                mov     eax, ebp
                shr     rax, 8
                movzx   edx, byte ptr [rdx+rax*4+4]
                mov     eax, edx
                mov     ecx, edx
                shr     rcx, 4
                and     eax, 0Fh
                mov     rsi, [rdi+rcx*8+90h]
                and     rsi, [rdi+rax*8+10h]
                jnz     short loc_14021C75E

loc_14021C73B:                          ; CODE XREF: RtlSidHashLookup+100↓j
                mov     esi, [rdi]
                cmp     esi, 40h ; '@'
                ja      loc_14042805A

loc_14021C746:                          ; CODE XREF: RtlSidHashLookup+1D↑j
                                        ; RtlSidHashLookup+22↑j ...
                xor     eax, eax

loc_14021C748:                          ; CODE XREF: RtlSidHashLookup+D0↓j
                                        ; RtlSidHashLookup+20B9A8↓j
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021C75E:                          ; CODE XREF: RtlSidHashLookup+59↑j
                lea     r8, qword_1400110F0

loc_14021C765:                          ; CODE XREF: RtlSidHashLookup+FE↓j
                movzx   r13d, sil
                test    sil, sil
                jz      short loc_14021C7D3
                mov     rcx, [rdi+8]
                mov     [rsp+58h+arg_10], rcx
                movzx   edx, r14b

loc_14021C77B:                          ; CODE XREF: RtlSidHashLookup+F1↓j
                movzx   eax, r13b
                movzx   eax, byte ptr [rax+r8]
                mov     [rsp+58h+arg_0], eax
                lea     r15d, [rdx+rax]
                shl     r15, 4
                add     r15, rcx
                mov     rax, [r15]
                cmp     [rax], bp
                jnz     short loc_14021C7C2
                mov     r8d, r12d
                mov     rdx, rax
                mov     rcx, rbx
                call    memcmp
                test    eax, eax
                jnz     short loc_14021C7B2
                mov     rax, r15
                jmp     short loc_14021C748
; ---------------------------------------------------------------------------

loc_14021C7B2:                          ; CODE XREF: RtlSidHashLookup+CB↑j
                mov     rcx, [rsp+58h+arg_10]
                lea     r8, qword_1400110F0
                movzx   edx, r14b

loc_14021C7C2:                          ; CODE XREF: RtlSidHashLookup+B9↑j
                mov     eax, [rsp+58h+arg_0]
                movzx   r13d, r13b
                btc     r13d, eax
                test    r13b, r13b
                jnz     short loc_14021C77B

loc_14021C7D3:                          ; CODE XREF: RtlSidHashLookup+8C↑j
                add     r14b, 8
                shr     rsi, 8
                test    rsi, rsi
                jnz     short loc_14021C765
                jmp     loc_14021C73B
RtlSidHashLookup endp
